#include "easy_dial.hpp"

// Cost: θ(1)
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

// Cost: θ(e), on e és el nombre d'elements que pengen del node_dial apuntat per
// node_original (comptant també aquest node_dial)
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
// Cost: θ(n), on n és el nombre de nodes del easy_dial
easy_dial::easy_dial(const easy_dial& D) throw(error) {
  try{
    _actual = D._actual;
    _indefinit = D._indefinit;
    _maxim = copiar_nodes(D._maxim);
    _prefix=D._prefix;
    _arrel = copiar_nodes(D._arrel);
  } catch (...) {
    throw;
  }
}

// Cost: θ(n), on n és el nombre de nodes del easy_dial
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

// Cost: θ(e), on e és el nombre d'elements que pengen del
// node_dial n (comptant també aquest node_dial)
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

// Cost: θ(n), on n és el nombre de nodes del easy_dial
easy_dial::~easy_dial() throw() {
  esborra_nodes(_arrel);
  esborra_nodes(_maxim);
  _actual = nullptr;
  _indefinit = true;
}

// Cost: θ(l), on l és la quantitat mitjana de símbols que té el nom del paràmetre phone p
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

// Cost: θ((n^2)+(n*l)), on n és el nombre d'elements que té el
// call_registry R i l la quantitat mitjana de símbols que té
// el nom de cada phone que conté el call_registry R
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

// Cost: θ(1)
string easy_dial::inici() throw() {
  _prefix = "";
  _indefinit = false;
  _actual = _maxim;
  _ultim = (_maxim == nullptr ? "" : _maxim->_p.nom());
  return _ultim;
}

// Cost en el cas pitjor: θ(s+l), on s és el nombre de simbols (caràcters) del
// easy_dial i l la quantitat mitjana de símbols que té cada phone emmagatzemat
// en el easy_dial
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

// Cost en el cas pitjor: θ(s+l), on s és el nombre de simbols (caràcters) del
// easy_dial i l la quantitat mitjana de símbols que té cada phone emmagatzemat
// en el easy_dial
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

// Cost en el cas pitjor: θ(s+l), on s és el nombre de simbols (caràcters) del
// easy_dial i l la quantitat mitjana de símbols que té cada phone emmagatzemat
// en el easy_dial
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

// Cost: θ(1)
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
  
// Cost en el cas pitjor: θ(n)
void easy_dial::comencen(const string& pref, vector<string>& result) const throw(error) {
  prefix(_arrel, pref, result);
  if(_maxim!=nullptr and _maxim->_p.nom().find(pref)==0){
    result.push_back(_maxim->_p.nom());
  }
  heapSort(result);
}

// Cost en el cas pitjor: θ(n), on n és el nombre de nodes del easy_dial
void easy_dial::prefix(node_dial* t, const string& pref,  vector<string>& result) {
  if(t != nullptr) {
    if(t->_p.nom().find(pref)==0) {
      result.push_back(t->_p.nom());
    }
    prefix(t->_primfill, pref, result);
    prefix(t->_seggerma, pref, result);
  }
}

// Cost: θ(n), on n és el nombre de nodes del easy_dial
double easy_dial::longitud_mitjana() const throw(){
  double res = 0, sumLong = 0;
  if(_maxim!=nullptr){
    res += _maxim->_p.frequencia();
  }
  mitjana(_arrel, 1, res, sumLong);
  return res != 0 ? sumLong/res : 0;
}

// Cost: θ(n), on n és el nombre de nodes que pengen del node_dial t
// (tenint en compte aquest node_dial)
void easy_dial::mitjana(node_dial* t, int i, double &freq, double &sumLong){
  if(t!=nullptr){
    freq += t->_p.frequencia();
    sumLong += t->_p.frequencia()*i;
    mitjana(t->_primfill,i+1,freq,sumLong);
    mitjana(t->_seggerma,i,freq,sumLong);
  }
}

 // Cost: θ(log(n/i)), on i és la posició i-èssima del
 // vector v i n és el nombre d'elements de v
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

// Cost: θ(n*log(n)), on n és el nombre
// d'elements del vector v
template<typename T>
void easy_dial::heapSort(vector<T>& v) {
  size_t n = v.size();

  // Construir un montícle (heap) màxim
  for (int i = n / 2 - 1; i >= 0; --i) {
    heapify(v, n, i);
  }

  // Extreure elements del monticle un per un
  for (int i = n - 1; i > 0; --i) {
    swap(v[0], v[i]);
    heapify(v, i, 0);
  }
}
