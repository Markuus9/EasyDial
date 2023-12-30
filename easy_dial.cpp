#include "easy_dial.hpp"

easy_dial::node_dial* easy_dial::insereix(node_dial *t, nat i, const phone &p, node_dial** array) {
  if (t == NULL) {
    t = new node_dial(p.nom()[i], p);
    if(i==0){
      array[p.nom()[i]-33] = t;
    }
    try {
      if (i < p.nom().length()-1) {
        t->_cent = insereix(t->_cent, i+1, p, array);
        t->_cent->_pare = t;
      }
    } catch (...) {
      delete t;
      throw;
    }
  } else {
    if (t->_c > p.nom()[i]) {
      t->_esq = insereix(t->_esq, i, p, array);
      t->_esq->_pare = t;
    }
    else if (t->_c < p.nom()[i]) {
      t->_dret = insereix(t->_dret, i, p, array);
      t->_dret->_pare = t;
    }
    else { // (t->_c == p.nom()[i])
      if(t->_p < p){
        t->_p = p;
      }
      t->_cent = insereix(t->_cent, i+1, p, array);
      t->_cent->_pare = t;
    }
  }
  return t;
}

// Retorna un node amb la copia de la informacio de pcopia;;
  easy_dial::node_dial* easy_dial::copiar_nodes(node_dial* node_original){
    if (node_original == nullptr) {
      return nullptr;
    }

    // Crear un nou node
    node_dial* node_nou = new node_dial(node_original->_c,node_original->_p);

    // Copiem recursivament les breanques
    node_nou->_esq = copiar_nodes(node_original->_esq);
    node_nou->_esq->_pare = node_nou;
    node_nou->_dret = copiar_nodes(node_original->_dret);
    node_nou->_dret->_pare = node_nou;

    return node_nou;
  }

// Esborra tots els elements del arbre apuntat per p
  void easy_dial::esborra_nodes(node_dial* p){
    if(p!=nullptr){
      esborra_nodes(p->_esq);
      esborra_nodes(p->_cent);
      esborra_nodes(p->_dret);
      delete p;
    }
  }

/* Construeix un easy_dial a partir de la 
  informació continguda en el call_registry donat. El
  prefix en curs queda indefinit. */
  easy_dial::easy_dial(const call_registry& R) throw(error){
    // Inicialitzar el prefix en curs com indefinit
    _actual = nullptr;

    vector<phone> v; // Creem el vector de phones
    R.dump(v); // Fem un bolcat de tots el phones de R

    if(v.size()>0){
      phone null;
      _arrel = new node_dial(' ',null);
      int M = v.size();
      for (int i = 0; i < M; ++i) {
        _arrel = insereix(_arrel, 0, v[i], _array);
      }
    } else {
      _arrel = nullptr;
    }
  }

  /* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
  easy_dial::easy_dial(const easy_dial& D) throw(error){
    _prefix = D._prefix;
    _actual = D._actual;
    for(int i=0; i<126; i++){
      _array[i] = D._array[i];
    }
    _arrel->_pare = nullptr;

    // Copiar recursivamente la estructura del TST
    _arrel = copiar_nodes(D._arrel);
  }

  easy_dial& easy_dial::operator=(const easy_dial& D) throw(error){
    if (this != &D) {
      esborra_nodes(_arrel);
      _prefix = D._prefix;
      _actual = D._actual;
      _arrel = copiar_nodes(D._arrel);
	  }
	  return (*this);
  }

  easy_dial::~easy_dial() throw(){
    esborra_nodes(_arrel);
  }

  /* Inicialitza el prefix en curs a buit. Retorna el nom de F(S, ''){}
  si F (S, '') no existeix llavors retorna l'string buit. */
  string easy_dial::inici() throw(){
    _prefix = "";
    _actual = _arrel;
    string result;
    if(_arrel!=nullptr){
      result = _arrel->_p.nom();
    } else {
      result = "";
    }
    return result;
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
    if(_actual!=nullptr){
      _prefix.push_back(c);
      if(c == _actual->_cent->_c){
        res = _actual->_cent->_p.nom();
        _actual = _actual->_cent;
      } else if(c == _actual->_dret->_c){
        res = _actual->_dret->_p.nom();
        _actual = _actual->_dret;
      } else if(c == _actual->_esq->_c){
        res = _actual->_esq->_p.nom();
        _actual = _actual->_esq;
      } else {
        res = "";
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
    if(_actual!=nullptr){
      if(_prefix==""){
        throw error(ErrNoHiHaAnterior);
      } else {
        _prefix.pop_back();
        _actual = _actual->_pare;
        res = _actual->_p.nom();
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
    if(_actual!=nullptr){
      res = _actual->_p.numero();
    } else {
      throw error(ErrPrefixIndef);
    }
    return res;
  }

  /* Retorna en el vector result tots els noms dels contactes de 
  telèfon que comencen amb el prefix pref, en ordre lexicogràfic creixent. */
  void easy_dial::comencen(const string& pref, vector<string>& result) const throw(error){}

  /* Retorna el número mitjà de pulsacions necessàries para obtenir un
  telèfon. Formalment, si X és el conjunt de noms emmagatzemats en
  el easy_dial i t(s) és el número de pulsacions mínimes
  necessàries (= número de crides a l'operació seguent) per
  obtenir el telèfon el nom del qual és s. La funció retorna la suma
      Pr(s) · t(s)
  per tots els telèfons s del conjunt X, sent Pr(s) la probabilitat de
  telefonar a s. La probabilitat s'obté dividint la freqüència de s per
  la suma de totes les freqüències. */
  double easy_dial::longitud_mitjana() const throw(){}
