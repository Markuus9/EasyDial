#include "easy_dial.hpp"

// Retorna un node amb la copia de la informacio de pcopia;;
  easy_dial::node_dial* easy_dial::copiar_nodes(node_dial* &node_original){
    if (node_original == nullptr) {
      return nullptr;
    }

    // Crear un nou node
    node_dial* node_nou = new node_dial;
    node_nou->_n = node_original->_n;
    node_nou->_p = node_original->_p;

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
      esborra_nodes(p->_dret);
      esborra_nodes(p->_esq);
      delete p;
    }
  }

/* Construeix un easy_dial a partir de la 
  informació continguda en el call_registry donat. El
  prefix en curs queda indefinit. */
  easy_dial::easy_dial(const call_registry& R) throw(error){
    // Inicialitzar el prefix en curs com indefinit
    _prefix = "";

    vector<phone> v; // Creem el vector de phones
    R.dump(v); // Fem un bolcat de tots el phones de R

    if(v.size()>0){
      _arrel = new node_dial;
      _arrel->_n = v[0].nom();
      int M = v.size();

      node_dial* p(_arrel);
      for (int i = 0; i < M; ++i) {
        node_dial* pnou = new node_dial;
        pnou->_dret = nullptr;
        pnou->_esq = nullptr;
        pnou->_p = v[i];
        pnou->_n = v[i].nom();
        if(pnou->_n > p->_n){
          p->_dret = pnou;
        } else {
          p->_esq = pnou;
        }
      }
    } else {
      _arrel = nullptr;
      _actual = nullptr;
    }
  }

  /* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
  easy_dial::easy_dial(const easy_dial& D) throw(error){
    _prefix = D._prefix;
    _actual = D._actual;
    _arrel->_pare = nullptr;

    // Copiar recursivamente la estructura del TST
    _arrel = copiar_nodes(D._arrel);
  }

  easy_dial& easy_dial::operator=(const easy_dial& D) throw(error){
    if (this != &D) {
      esborra_nodes(_arrel);
      _prefix = D._prefix;
      _actual = D._actual;
      _arrel = new node_dial;
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
      result = _arrel->_n;
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
      if(_prefix > _actual->_n){
        res = _actual->_dret->_n;
        _actual = _actual->_dret;
      } else if(_prefix < _actual->_n){
        res = _actual->_esq->_n;
        _actual = _actual->_esq;
      } else {
        res = _actual->_n;
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
        res = _actual->_n;
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
