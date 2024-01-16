#include "easy_dial.hpp"

typename easy_dial::node_dial* easy_dial::crea_node(const char &c, phone p, node_dial* fill = nullptr, 
node_dial* germa = nullptr, node_dial* pare = nullptr)
{
  node_dial* nou = new node_dial;
  nou->_c = c;
  nou->_p = p;
  nou->_primfill = fill;
  nou->_seggerma = germa;
  nou->_pare = pare;
  return nou;
}


typename easy_dial::node_dial* easy_dial::copiar_nodes(node_dial *node_original){
  if (node_original == nullptr) {
    return nullptr;
  }
  // Crear un nou node
  node_dial* node_nou = new node_dial;
  try {
    node_nou->_c = node_original->_c;
    node_nou->_p = node_original->_p;
    // Copiem recursivament les breanques
    node_nou->_primfill = copiar_nodes(node_original->_primfill);
    if(node_nou->_primfill!=nullptr) node_nou->_primfill->_pare = node_nou;
    node_nou->_seggerma = copiar_nodes(node_original->_seggerma);
    if(node_nou->_seggerma!=nullptr) node_nou->_seggerma->_pare = node_nou;
  } catch(...){
    delete node_nou;
    throw;
  }
  return node_nou;
}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
easy_dial::easy_dial(const easy_dial& D) throw(error) {
  try{
    _actual = D._actual;
    _indefinit = D._indefinit;
    esborra_nodes(_maxim);
    _maxim = copiar_nodes(D._maxim);
    _prefix=D._prefix;
    _arrel = copiar_nodes(D._arrel);
  } catch (...) {
    throw;
  }
}

easy_dial& easy_dial::operator=(const easy_dial& D) throw(error) {
  try {
    if(this != &D){
      esborra_nodes(_arrel);
      esborra_nodes(_maxim);
      _actual = D._actual;
      _prefix = D._prefix;
      _indefinit = D._indefinit;
      _maxim = copiar_nodes(D._maxim);
      _arrel = copiar_nodes(D._arrel);
    }
  } catch(...){
    throw;
  }
  return(*this);
}

void easy_dial::esborra_nodes(node_dial *n){
  try{
    if (n != NULL) {
      esborra_nodes(n->_primfill);
      esborra_nodes(n->_seggerma);
      delete n;
    }
  } catch(...){
    throw;
  }
}

easy_dial::~easy_dial() throw() {
  esborra_nodes(_arrel);
  esborra_nodes(_maxim);
  _actual = nullptr;
  _indefinit = true;
}

typename easy_dial::node_dial* easy_dial::insereix(node_dial* t, nat i, const phone &p)  {
  if (t == nullptr) {
    if (i < p.nom().size()) {
      t = crea_node(p.nom()[i],p);
    } else {
      t = crea_node('\000',p);
    }
  } else {
    if (i >= p.nom().size()) {
      t->_seggerma = insereix(t->_seggerma,i,p);
      t->_seggerma->_pare = t;
    } 
    else if (t->_c == p.nom()[i]){
      t->_primfill = insereix(t->_primfill,i+1,p);
      t->_primfill->_pare = t;
    }
    else {
      t->_seggerma = insereix(t->_seggerma,i,p);
      t->_seggerma->_pare = t;
    }
  }
  return t;
}

/* Construeix un easy_dial a partir de la 
informació continguda en el call_registry donat. El
prefix en curs queda indefinit. */
easy_dial::easy_dial(const call_registry& R) throw(error) {
  vector<phone> v; // Creem un vector de phones
  R.dump(v); // Fem un bolcat dels phones
  
  _arrel = nullptr;
  _actual = nullptr;
  _indefinit = true;
  _maxim = nullptr;

  if(v.size()>0){
    heapSort(v);
    _maxim = crea_node('\000',v[v.size()-1]);
    for (int i = v.size()-1; i > 0; --i) {
      _arrel = insereix(_arrel, 0,v[i-1]);
    }
  } 
}

/* Inicialitza el prefix en curs a buit. Retorna el nom de F(S, '');
si F (S, '') no existeix llavors retorna l'string buit. */
string easy_dial::inici() throw() {
  _prefix = "";
  _indefinit = false;
  _actual = _maxim;
  _ultim = (_maxim == nullptr ? "" : _maxim->_p.nom());
  return _ultim;
}

typename easy_dial::node_dial* easy_dial::cerca(const string& pref, nat i,  node_dial* p) {
  node_dial* res = nullptr;
  if(p != nullptr){
    if(pref[pref.size()-1]==p->_c and i == pref.size()-1 ){
      res = p;
    } else if(p->_c == pref[i]){
      res = cerca(pref, i+1, p->_primfill);
    } else {
      res = cerca(pref,i,p->_seggerma);
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
string easy_dial::seguent(char c) throw(error) {
  string res;
  if(_indefinit!=true){
    if(_actual!=nullptr){
      _prefix.push_back(c);
      node_dial* result = cerca(_prefix,0, _arrel);
      if(result != nullptr){
        res = result->_p.nom();
        _actual = result;
      } else {
        _actual = nullptr;
      }
    } else {
      _indefinit = true;
      throw error(ErrPrefixIndef);
    }
  } else {
    throw error(ErrPrefixIndef);
  }
  _ultim = res;
  return res;
}

/* Elimina l'últim caràcter del prefix en curs p = p' · a
(a és el caràcter eliminat). Retorna el nom F(S, p') 
i fa que el nou prefix en curs sigui p'. 
Es produeix un error si p fos buida i si es fa que el prefix en curs
quedi indefinit. Òbviament, també es produeix un error 
si p fos indefinit. */
string easy_dial::anterior() throw(error) {
  string res;
    if(_indefinit!=true){
      if(_prefix.size()>0){
        _prefix.pop_back();
        node_dial* result = cerca(_prefix, 0, _arrel);
        if(_prefix.size()==0){
          res = _maxim->_p.nom();
          _actual = _maxim;
        } else if(result!=nullptr){
          res = result->_p.nom();
          _actual = result;
        } else {
          _actual = nullptr;
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
nat easy_dial::num_telf() const throw(error) {
  nat res;
  if(_indefinit!=true){
    if(_actual!=nullptr){
      res = _actual->_p.numero();
    } else {
      throw error(ErrNoExisteixTelefon);
    }
  } else {
    throw error(ErrPrefixIndef);
  } 
  return res;
}
  
/* Retorna en el vector result tots els noms dels contactes de 
telèfon que comencen amb el prefix pref, en ordre lexicogràfic creixent. */
void easy_dial::comencen(const string& pref, vector<string>& result) const throw(error) {
  prefix(_arrel, pref, result);
  if(_maxim!=nullptr and _maxim->_p.nom().find(pref)==0){
    result.push_back(_maxim->_p.nom());
  }
  heapSort(result);
}

void easy_dial::prefix(node_dial* t, const string& pref,  vector<string>& result) {
  if(t != nullptr) {
    if(t->_p.nom().find(pref)==0) {
      result.push_back(t->_p.nom());
    }
    prefix(t->_primfill, pref, result);
    prefix(t->_seggerma, pref, result);
  }
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
  double res = 0, sumLong = 0;
  if(_maxim!=nullptr){
    res += _maxim->_p.frequencia();
  }
  mitjana(_arrel, 1, res, sumLong);
  return res != 0 ? sumLong/res : 0;
}

void easy_dial::mitjana(node_dial* t, int i, double &freq, double &sumLong){
  if(t!=nullptr){
    freq += t->_p.frequencia();
    sumLong += t->_p.frequencia()*i;
    mitjana(t->_primfill,i+1,freq,sumLong);
    mitjana(t->_seggerma,i,freq,sumLong);
  }
}

 template<typename T>
  void easy_dial::heapify(vector<T>& v, size_t n, size_t i) {
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

template<typename T>
void easy_dial::heapSort(vector<T>& v) {
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