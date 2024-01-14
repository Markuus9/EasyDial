#include "easy_dial.hpp"
//
  easy_dial::node_dial* easy_dial::crea_node(const char &c, phone p, node_dial* esq = nullptr,node_dial* cen = nullptr, node_dial* dre = nullptr, node_dial* pare = nullptr){
    node_dial* nou = new node_dial;
    nou->_c = c;
    nou->_p = p;
    nou->_esq = esq;
    nou->_cent = cen;
    nou->_dret = dre;
    nou->_pare = pare;
    return nou;
  }
//
  int easy_dial::index(const char &c){
    //return c-33;
    return int(c);
  }

//
  easy_dial::node_dial* easy_dial::insereix(node_dial *t, nat i, const phone &p) {
    if (t == nullptr) {
      t = crea_node(p.nom()[i], p);
      /*if(i==0){
        array[index(p.nom()[i])] = t;
      }*/
      try {
        if (i < p.nom().length()-1) {
          t->_cent = insereix(t->_cent, i+1, p);
          t->_cent->_pare = t;
        }
      } catch (...) {
        delete t;
        throw;
      }
    } else {
      if(t->_p < p){
        t->_p = p;
      }
      if (t->_c > p.nom()[i]) {
        t->_esq = insereix(t->_esq, i, p);
        t->_esq->_pare = t;
      }
      else if (t->_c < p.nom()[i]) {
        t->_dret = insereix(t->_dret, i, p);
        t->_dret->_pare = t;
      }
      else { // (t->_c == p.nom()[i])
        if(t->_p < p){
          t->_p = p;
        }
        t->_cent = insereix(t->_cent, i+1, p);
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
    node_dial* node_nou = crea_node(node_original->_c,node_original->_p);

    // Copiem recursivament les breanques
    node_nou->_esq = copiar_nodes(node_original->_esq);
    if(node_original->_esq!= nullptr) node_nou->_esq->_pare = node_nou;
    node_nou->_cent = copiar_nodes(node_original->_esq);
    if(node_original->_cent!= nullptr) node_nou->_cent->_pare = node_nou;
    node_nou->_dret = copiar_nodes(node_original->_dret);
    if(node_original->_dret!= nullptr) node_nou->_dret->_pare = node_nou;

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

  void easy_dial::cerca_noms(node_dial* n, vector<string>& result){
    if(n->_cent==nullptr){ 
      result.push_back(n->_p.nom());
    }
    if(n->_esq!=nullptr){
      cerca_noms(n->_esq, result);
    }
    if(n->_cent!=nullptr){
      cerca_noms(n->_cent, result);
    }
    if(n->_dret!=nullptr){
      cerca_noms(n->_dret, result);
    }
  }

/* Construeix un easy_dial a partir de la 
  informació continguda en el call_registry donat. El
  prefix en curs queda indefinit. */
  easy_dial::easy_dial(const call_registry& R) throw(error){
    // Inicialitzar el prefix en curs com indefinit
    _prefix = "";
    _indefinit = true;
    _actual = nullptr;
    _anterior = nullptr;

    vector<phone> v; // Creem el vector de phones
    R.dump(v); // Fem un bolcat de tots el phones de R

    if(v.size()>0){
      phone null;
      //_array = new string[v.size()];
      for (int i = 0; i < v.size(); ++i) {
        _freqTotal += v[i].frequencia();
        _arrel = insereix(_arrel, 0, v[i]);
        //_array[i] = v[i].nom();
      }

    } else {
      _arrel = nullptr;
    }
  }

  /* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
  easy_dial::easy_dial(const easy_dial& D) throw(error){
    _prefix = D._prefix;
    _actual = D._actual;
    _anterior = D._anterior;
    _indefinit = D._indefinit;
    _freqTotal = D._freqTotal;
    //for(int i=0; i<126; i++){
    //  _array[i] = D._array[i];
    //}
    _arrel->_pare = nullptr;

    // Copiar recursivamente la estructura del TST
    _arrel = copiar_nodes(D._arrel);
  }

  easy_dial& easy_dial::operator=(const easy_dial& D) throw(error){
    if (this != &D) {
      esborra_nodes(_arrel);
      _prefix = D._prefix;
      _actual = D._actual;
      _anterior = D._anterior;
      _indefinit = D._indefinit;
      _freqTotal = D._freqTotal;
      //for(int i=0; i<126; i++){
      //  _array[i] = D._array[i];
      //}
      _arrel = copiar_nodes(D._arrel);
	  }
	  return (*this);
  }

  easy_dial::~easy_dial() throw(){
    esborra_nodes(_arrel);
    _indefinit = true;
  }

  /* Inicialitza el prefix en curs a buit. Retorna el nom de F(S, ''){}
  si F (S, '') no existeix llavors retorna l'string buit. */
  string easy_dial::inici() throw(){
    _prefix = "";
    _indefinit = false;
    _actual = _arrel;
    _anterior = nullptr;
    string result;
    if(_arrel!=nullptr){
      result = _arrel->_p.nom();
      _ultim = result;
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
    if(_anterior!=nullptr and _ultim==""){
      _indefinit = true;
      throw error(ErrPrefixIndef);
    }
    if(_indefinit!=true and _actual!=nullptr){
      _prefix.push_back(c);
      if(_actual->_c == c and c!='\000'){
        _actual = _actual->_cent;
        res = _actual->_p.nom();
      } else if(_actual->_cent!=nullptr and c == _actual->_cent->_c){
        _actual = _actual->_cent;
        res = _actual->_p.nom();
      } else if(_actual->_dret!=nullptr and c == _actual->_dret->_c){
        _actual = _actual->_dret;
        res = _actual->_p.nom();
      } else if(_actual->_esq!=nullptr and c == _actual->_esq->_c){
        _actual = _actual->_esq;
        res = _actual->_p.nom();
      } else {
        _anterior = _actual;
        res = "";
      } 
    } else {
      _indefinit = true;
      throw error(ErrPrefixIndef);
    }
    bool iguales = (res==_ultim);
    node_dial* pi(_actual);
    if(iguales){
      //_actual = _actual->_pare;
      _anterior = _actual->_pare;
    }
    //node_dial* pi(_actual);
    while(iguales){
      //_actual = _actual->_pare;
      //_anterior = _actual->_pare;
      phone p, p2, p3;
      if(pi->_esq==nullptr and pi->_dret==nullptr and pi->_cent==nullptr){ // Hem passat el limit
        res = "";
        iguales = false;
        //_anterior = _actual->_pare;
      } else {
        //_anterior = _actual->_pare;
        if(pi->_esq!=nullptr && pi->_esq->_p.nom()!=_ultim){
          p = pi->_esq->_p;
        }
        if(pi->_dret!=nullptr && pi->_dret->_p.nom()!=_ultim){
          p2 = pi->_dret->_p;
        }
        if(pi->_cent!=nullptr && pi->_cent->_p.nom()!=_ultim){
          p3 = pi->_cent->_p;
        }
        if(p >= p2 && p >= p3){
          res = p.nom();
          pi = pi->_esq;
        } else if(p2 >= p && p2 >= p3){
          res = p2.nom();
          pi = pi->_dret;
        } else {
          res = p3.nom();
          pi = pi->_cent;
        }
      }
      if(res!=_ultim){
        iguales = false;
        _actual = pi;
      } else {
        //pi = pi->_cent;
      }
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
  string easy_dial::anterior() throw(error){
    string res;
    if(_indefinit!=true){
      if(_prefix.size()==0){
        _indefinit = true;
        throw error(ErrNoHiHaAnterior);
      } else if(_anterior!=nullptr){ // _anterior!=nullptr
        _actual = _anterior;
        _anterior = nullptr;
      } else if(_actual->_pare!=nullptr){
        _actual = _actual->_pare;
      }
      _prefix.pop_back();
      res = _actual->_p.nom(); 
      _ultim = res;
    } else {
      _indefinit = true;
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
      if(_anterior!=nullptr){
        throw error(ErrNoExisteixTelefon);
      } if(_prefix.size()==0 and _actual!=nullptr){
        res = _actual->_p.numero();
      } else if(_actual!=_arrel){
        res = _actual->_p.numero();
      } else {
        throw error(ErrNoExisteixTelefon);
      }
    } else {
      throw error(ErrPrefixIndef);
    } 
    return res;
  }

  // Pre: t=T, i=I, s=S
  // Post: Retorna nombre de claus des del node T que tenen el prefix S
  // des de la posició I
  void easy_dial::prefix(node_dial* t, nat i, const string& s, vector<string>& result){
    if (t != NULL) {
      if (i < s.length()) { // Recorrem el prefix
        if (t->_c > s[i]) {
          prefix(t->_esq, i, s, result); 
        } else if (t->_c < s[i]) {
          prefix(t->_dret, i, s, result);
        } else if (t->_c == s[i]) { 
          if(t->_cent!=nullptr){
            prefix(t->_cent, i+1, s, result);
          } else {
            prefix(t, i+1, s, result);
          }
        } 
      } else {
        if (t->_cent == nullptr) { // Comptem les paraules
          result.push_back(t->_p.nom());
        }
        prefix(t->_esq, i, s, result);
        prefix(t->_dret, i, s, result);
        prefix(t->_cent, i, s, result);
      }
    }
  } 

  /* Retorna en el vector result tots els noms dels contactes de 
  telèfon que comencen amb el prefix pref, en ordre lexicogràfic creixent. */
  void easy_dial::comencen(const string& pref, vector<string>& result) const throw(error){
    // Pre: s=S
    // Post: Modifica el vector afegint les claus del p.i. que tenen el prefix S
    /*
    if(_arrel!=nullptr){
      prefix(_arrel->_cent, 0, pref, result);
      prefix(_arrel->_esq, 0, pref, result);
      prefix(_arrel->_dret, 0, pref, result);
    } */
    prefix(_arrel, 0, pref, result);
  }

  /*void easy_dial::comencen(const string& pref, vector<string>& result) const throw(error){
    if(_arrel!=nullptr){
      if(pref!=""){
        cerca_noms(_arrel, result);
      } else {
        node_dial* p(_array[index(pref[0])]);
        for(int i = 1; i<pref.size() and p!=nullptr; i++){
          if(p->_esq->_c==pref[i]){
            p = p->_esq;
          } else if(p->_cent->_c==pref[i]){
            p = p->_cent;
          } else if(p->_dret->_c==pref[i]){
            p = p->_dret;
          } else {
            p = nullptr;
          }
        }
        if(p!=nullptr){
          cerca_noms(p, result);
        }
      }
    }
  } */

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
    double res = 0.0;
    if(_arrel!=nullptr){
      mitjana(_arrel, 0, res, _freqTotal);
    } else {
      res = 0.0;
    }
    return res;
  }

  void easy_dial::mitjana(node_dial* t, int i, double &freq, const int &freqTotal){
    if(t!=nullptr){ 
      if(t->_pare!=nullptr and t->_pare->_p!=t->_p){
        freq += (t->_p.frequencia()/freqTotal)*i;
        i++;
      }
      mitjana(t->_esq, i, freq, freqTotal);
      mitjana(t->_cent, i, freq, freqTotal);
      mitjana(t->_dret, i, freq, freqTotal);
    }
  }
