#include "easy_dial.hpp"
//
  easy_dial::node_dial* easy_dial::crea_node(const char &c, phone p, node_dial* fill = nullptr, node_dial* germa = nullptr){
    node_dial* nou = new node_dial;
    nou->_c = c;
    nou->_p = p;
    nou->_primfill = fill;
    nou->_seggerma = germa;
    return nou;
  }

  // Retorna un node amb la copia de la informacio de node_original;;
  easy_dial::node_dial* easy_dial::copiar_nodes(node_dial* node_original){
    if (node_original == nullptr) {
      return nullptr;
    }

    // Crear un nou node
    node_dial* node_nou = crea_node(node_original->_c,node_original->_p);

    // Copiem recursivament les breanques
    node_nou->_primfill = copiar_nodes(node_original->_primfill);
    node_nou->_seggerma = copiar_nodes(node_original->_seggerma);

    return node_nou;
  }

  //
  easy_dial::node_dial* easy_dial::insereix(node_dial *t, nat i, const phone &p) {
    if (t == nullptr) {
      if (i < p.nom().size()) {
        t = crea_node(p.nom()[i], p);
      } else {
        t = crea_node('\000', p);
      }
    } else {
      //if(t->_p < p){
      //  t->_p = p;
      //}
      if (i >= p.nom().size()) {
       t->_seggerma = insereix(t->_seggerma, i, p);
      } else if (t->_c == p.nom()[i]) {
        t->_primfill = insereix(t->_primfill, i+1, p);
      } else { 
        t->_seggerma = insereix(t->_seggerma, i, p);
      }
    }
    return t;
  }

// Esborra tots els elements del arbre apuntat per p
  void easy_dial::esborra_nodes(node_dial* p){
    if(p!=nullptr){
      esborra_nodes(p->_primfill);
      esborra_nodes(p->_seggerma);
      delete p;
    }
  }

  void easy_dial::heapify(vector<phone>& v, size_t n, size_t i) {
    size_t largest = i;
    size_t left = 2 * i + 1;
    size_t right = 2 * i + 2;

    if (left < n && v[left] > v[largest]) {
      largest = left;
    }

    if (right < n && v[right] > v[largest]) {
      largest = right;
    }

    if (largest != i) {
      swap(v[i], v[largest]);
      heapify(v, n, largest);
    }
}

void easy_dial::heapSort(vector<phone>& v) {
  size_t n = v.size();

  // Construir un montículo (heap) máximo
  for (int i = n / 2 - 1; i >= 0; --i) {
    heapify(v, n, i);
  }

  // Extraer elementos del montículo uno por uno
  for (int i = n - 1; i > 0; --i) {
    swap(v[0], v[i]);
    heapify(v, i, 0);
  }
}

/* Construeix un easy_dial a partir de la 
  informació continguda en el call_registry donat. El
  prefix en curs queda indefinit. */
  easy_dial::easy_dial(const call_registry& R) throw(error){

    vector<phone> v; // Creem el vector de phones
    R.dump(v); // Fem un bolcat de tots el phones de R

    if(v.size()>0){
      heapSort(v);
      _maxim = v[v.size()-1];
      for (int i = 1; i > v.size(); ++i) {
        _arrel = insereix(_arrel, 0, v[v.size()-i-1]);
      }
    } else {
      _arrel = nullptr;
    }
  }

  /* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
  easy_dial::easy_dial(const easy_dial& D) throw(error){
    // Copiar recursivamente la estructura del TST
    _arrel = copiar_nodes(D._arrel);
  }

  easy_dial& easy_dial::operator=(const easy_dial& D) throw(error){
    if (this != &D) {
      esborra_nodes(_arrel);
      _prefix = D._prefix;
      _actual = D._actual;
      _indefinit = D._indefinit;
      _maxim = D._maxim;
      _arrel = copiar_nodes(D._arrel);
	  }
	  return (*this);
  }

  easy_dial::~easy_dial() throw(){
    esborra_nodes(_arrel);
    _indefinit = true;
    _actual = phone();
  }

  /* Inicialitza el prefix en curs a buit. Retorna el nom de F(S, ''){}
  si F (S, '') no existeix llavors retorna l'string buit. */
  string easy_dial::inici() throw(){
    _indefinit = false;
    _prefix = "";
    string result;
    if(_maxim.nom().size()>0){ 
      result = _maxim.nom();
      _actual = _maxim;
    } else {
      result = "";
    }
    return result;
  }


  easy_dial::node_dial* easy_dial::cerca(const string& pref, nat i, node_dial* p) {
    node_dial* res = nullptr;
    if(p != nullptr){
      if(pref[pref.size()-1]==p->_c and i == pref.size()-1 ){
        res = p;
      } else if(p->_c == pref[i]){
        res = cerca(pref, i+1, p->_primfill);
      } else {
        res = cerca(pref, i, p->_seggerma);
      }
    }
    return res;
  }

  /* Retorna el nom de F(S, p') on p' és el prefix resultant d'afegir
  el caràcter c al final del prefix en curs p i
  fa que el nou prefix en curs sigui p'.
  Si F(S, p) existeix però F(S, p') no existeix llavors retorna 
  l'string buit. 
  Si no existeix F(S, p) (i per tant tampoc pot existir F(S, p'))
  llavors es produeix un error i el prefix en curs queda indefinit. 
  Naturalment, es produeix un error si el prefix en curs inicial p 
  fos indefinit. */
  string easy_dial::seguent(char c) throw(error){
    string res;
    if(_indefinit!=true){
      if(_actual.nom().size()>0){
        _prefix.push_back(c);
        node_dial* result = cerca(_prefix, 0, _arrel);
        if(result != nullptr){
          res = result->_p.nom();
          _actual = result->_p;;
        } //else {
         // _actual = phone(); // Por obsrevar
        //}
      } else {
        _indefinit = true;
        throw error(ErrPrefixIndef);
      }
    } else {
      throw error(ErrPrefixIndef);
    }
    
    return res;
  }

  /* Elimina l'últim caràcter del prefix en curs p = p' · a
  (a és el caràcter eliminat). Retorna el nom F(S, p') 
  i fa que el nou prefix en curs sigui p'. 
  Es produeix un error si p fos buida i si es fa que el prefix en curs
  quedi indefinit. Òbviament, també es produeix un error 
  si p fos indefinit. */
  string easy_dial::anterior() throw(error){
    string res;
    if(_indefinit!=true){
      if(_prefix.size()>0){
        _prefix.pop_back();
        node_dial* result = cerca(_prefix, 0, _arrel);
        if(_prefix.size()==0){
          res = _maxim.nom();
          _actual = _maxim;
        } else if(result!=nullptr){
          res = result->_p.nom();
          _actual = result->_p;
        } 
      } else {
        _indefinit = true;
        throw error(ErrNoHiHaAnterior);
      }
    } else {
      throw error(ErrPrefixIndef);
    }
    
    return res;
  }

  /* Retorna el número de telèfon de F(S, p), sent p
  el prefix en curs. Es produeix un error si p és indefinit o si
  no existeix F(S, p). */
  nat easy_dial::num_telf() const throw(error){
    nat res;
    if(_indefinit!=true){
      if(_actual.nom().size()>0){
        res = _actual.numero();
      } else {
        throw error(ErrNoExisteixTelefon);
      }
    } else {
      throw error(ErrPrefixIndef);
    } 
    return res;
  }

  void easy_dial::prefix(node_dial* t, vector<string>& res){
    if(t != nullptr){
      string nom = t->_p.nom();
      res.push_back(nom);
      prefix(t->_primfill, res);
      prefix(t->_seggerma, res);
    }
  }

  // Pre: t=T, i=I, s=S
  // Post: Retorna nombre de claus des del node T que tenen el prefix S
  // des de la posició I
  void easy_dial::prefix(node_dial* t, nat i, const string& pref, vector<string>& res){
    while(i < pref.size() and t != nullptr){
      if(pref[i] == t->_c){
        if(t->_p.nom().find(pref)==0){
          string nom = t->_p.nom();
          res.push_back(nom);
        }
        t = t->_primfill;
        i++;
      } else {
        t = t->_seggerma;
      }
    }
    if(pref.size() == i){
      prefix(t, res);
    }
  } 

  /* Retorna en el vector result tots els noms dels contactes de 
  telèfon que comencen amb el prefix pref, en ordre lexicogràfic creixent. */
  void easy_dial::comencen(const string& pref, vector<string>& result) const throw(error){
    // Pre: s=S
    // Post: Modifica el vector afegint les claus del p.i. que tenen el prefix S
    prefix(_arrel, 0, pref, result);
  }

  /* Retorna el número mitjà de pulsacions necessàries para obtenir un
  telèfon. Formalment, si X és el conjunt de noms emmagatzemats en
  el easy_dial i t(s) és el número de pulsacions mínimes
  necessàries (= número de crides a l'operació seguent) per
  obtenir el telèfon el nom del qual és s. La funció retorna la suma
      Pr(s) · t(s)
  per tots els telèfons s del conjunt X, sent Pr(s) la probabilitat de
  telefonar a s. La probabilitat s'obté dividint la freqüència de s per
  la suma de totes les freqüències. */
  double easy_dial::longitud_mitjana() const throw(){
    double res = 0.0, sumLong = 0.0;
    res += _maxim.frequencia();
    mitjana(_arrel, 1, res, sumLong);
    if(res!=0){
      res = sumLong/res;
    }
    return res;
  }

  void easy_dial::mitjana(node_dial* t, int i, double &freq, double &sumLong){
    if(t!=nullptr){ 
      sumLong += t->_p.frequencia()*i;
      freq += t->_p.frequencia();
      mitjana(t->_primfill, i+1, freq, sumLong);
      mitjana(t->_seggerma, i, freq, sumLong);
    }
  }
