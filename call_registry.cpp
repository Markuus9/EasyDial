#include "call_registry.hpp"

// Cost: θ(e), on e és el nombre d'elements de la llista simplement
// encadenada apuntada per pcopia
call_registry::node_taula* call_registry::copia_nodes(node_taula* pcopia) {
	node_taula *p = nullptr, *pant = nullptr, *pprimer = nullptr;
	while (pcopia != nullptr) {
		p = new node_taula;
		p->_k = pcopia->_k;
		p->_p = pcopia->_p;
		if (pant != nullptr) {
			pant->_seg = p;
		}
		pant = p;
		if (pprimer == nullptr) {
			pprimer = p;
		}
		pcopia = pcopia->_seg;
	}
	if (p != nullptr) {
		p->_seg = nullptr;
	}
	return pprimer;
}

// Cost: θ(e), on e és el nombre d'elements de la llista simplement
// encadenada apuntada per p
void call_registry::esborra_nodes(node_taula* p) {
	if (p != nullptr) {
		esborra_nodes(p->_seg);
		delete p;
	}
}

// Cost: θ(1)
int call_registry::hash(const nat &x) {
	//static long const MULT = 31415926;
	//long y = ((x * x * MULT) << 20) >> 4;
	//return y;
	return x;
}

// Cost: θ(1), perquè sempre es el mateix nombre
// d'iteracions per crear un call_registry buit
call_registry::call_registry() throw(error) {
	_M = 5;
	_nelem = 0;
  	_taula = new node_taula*[_M];
  	for (int i=0; i < _M; ++i) {
   	 _taula[i] = nullptr;
  	}
}

// Cost: θ(n), on n és el nombre de claus que té el
// call_registry R
call_registry::call_registry(const call_registry& R) throw(error) {
	_M = R._M;
	_nelem = R._nelem;
	_taula = new node_taula*[_M];
	for (int i = 0; i<_M; ++i) {
		_taula[i] = copia_nodes(R._taula[i]);
	}
}

// Cost: θ(n1+n2), on n1 és el nombre de claus que tenia inicialment
// el call_registry paràmetre implícit i n2 és el nombre de claus
// que té el call_registry R
call_registry& call_registry::operator=(const call_registry& R) throw(error) {
	if (this != &R) {
		for (int i=0; i<_M; ++i) {
			esborra_nodes(_taula[i]);
		}
		delete _taula;
		_M = R._M;
		_nelem = R._nelem;
		int mida = _M;
		_taula = new node_taula*[mida];
		for (int i=0; i<mida; ++i) {
			_taula[i] = copia_nodes(R._taula[i]);
		}
	}
	return (*this);
}

// Cost: θ(n), on n és el nombre de claus que té el
// call_registry R
call_registry::~call_registry() throw() {
	for (int i=0; i < _M; ++i) {
		esborra_nodes(_taula[i]);
	}
	delete _taula;
}

// Cost: O(e), on e és el nombre d'elements de la llista simplement
// encadenada que li correspon a "num". Si els elements del call_registry
// estan ben dispersos, en terme mig el cost del mètode és θ(1)
void call_registry::registra_trucada(nat num) throw(error) {
	int i = hash(num) % _M;
	node_taula* t = _taula[i];
	node_taula* pant = nullptr;
	if(t==nullptr){
		node_taula* nou = new node_taula;
		phone p(num, "", 1);
		nou->_p = p;
		nou->_k = num;
		nou->_seg = nullptr;
		_taula[i] = nou; 
		++_nelem;
	} else {
		bool hi_es = false;
		while (t != nullptr and not hi_es) {
			if (t->_k == num) { 
				hi_es = true;
				t->_p++;
			} else {
				pant = t;
				t = t->_seg; 
			}
		}
		if(not hi_es){
			node_taula* nou = new node_taula;
			phone p(num, "", 1);
			nou->_p = p;
			nou->_k = num;
			nou->_seg = nullptr;
			t = nou; 
			pant->_seg = t;
			++_nelem;
		}
	}
}

// Cost: O(e), on e és el nombre d'elements de la llista simplement
// encadenada que li correspon a "num". Si els elements del call_registry
// estan ben dispersos, en terme mig el cost del mètode és θ(1)
void call_registry::assigna_nom(nat num, const string& name) throw(error) {
	int i = hash(num) % _M;
	node_taula* t = _taula[i];
	node_taula* pant = nullptr;
	if(t==nullptr){
		node_taula* nou = new node_taula;
		phone p(num, name, 0);
		nou->_p = p;
		nou->_k = num;
		nou->_seg = nullptr;
		_taula[i] = nou; 
		++_nelem;
	} else {
		bool hi_es = false;
		while (t != nullptr and not hi_es) {
			if (t->_k == num) { 
				hi_es = true;
			} else {
				pant = t;
				t = t->_seg; 
			}
		}
		if(not hi_es){
			node_taula* nou = new node_taula;
			phone p(num, name, 0);
			nou->_p = p;
			nou->_k = num;
			nou->_seg = nullptr;
			t = nou; 
			pant->_seg = t;
			++_nelem;
		} else {
			nat freq = t->_p.frequencia();
			phone p(num, name, freq);
			t->_p = p;
		}
	}
}

// Cost: O(e), on e és el nombre d'elements de la llista simplement
// encadenada que li correspon a "num". Si els elements del call_registry
// estan ben dispersos, en terme mig el cost del mètode és θ(1)
void call_registry::elimina(nat num) throw(error) {
	nat i = hash(num) % _M;
	node_taula *p = _taula[i], *ant=nullptr; 
	bool trobat = false;
	while (p != nullptr and not trobat) {
		if (p->_k == num) { 
			trobat = true;
		} else {
			ant = p;
			p = p->_seg; 
		}
	}
	if (trobat) {
		if (ant == nullptr) { 
			_taula[i] = p->_seg;
		} else {
			ant->_seg = p->_seg; 
		}
		delete(p);
		--_nelem; 
	} else {
		throw error(ErrNumeroInexistent);
	}
}

// Cost: O(e), on e és el nombre d'elements de la llista simplement
// encadenada que li correspon a "num". Si els elements del call_registry
// estan ben dispersos, en terme mig el cost del mètode és θ(1)
bool call_registry::conte(nat num) const throw() {
	int i = hash(num) % _M;
	node_taula* t = _taula[i];
	bool hi_es = false;
	while (t != nullptr and not hi_es) {
		if (t->_k == num) { 
			hi_es = true;
		} else {
			t = t->_seg; 
		}
	}
	return hi_es;
}

// Cost: O(e), on e és el nombre d'elements de la llista simplement
// encadenada que li correspon a "num". Si els elements del call_registry
// estan ben dispersos, en terme mig el cost del mètode és θ(1)
string call_registry::nom(nat num) const throw(error) {
	int i = hash(num) % _M;
	string nom = "";
	node_taula* t = _taula[i];
	bool hi_es = false;
	while (t != nullptr and not hi_es) {
		if (t->_k == num) { 
			hi_es = true;
		} else {
			t = t->_seg; 
		}
	}
	if (hi_es) {
		nom = t->_p.nom();
	} else {
		throw error(ErrNumeroInexistent);
	}
	return nom;
}

// Cost: O(e), on e és el nombre d'elements de la llista simplement
// encadenada que li correspon a "num". Si els elements del call_registry
// estan ben dispersos, en terme mig el cost del mètode és θ(1)
nat call_registry::num_trucades(nat num) const throw(error) {
	int i = hash(num) % _M;
	nat freq;
	node_taula* t = _taula[i];
	bool hi_es = false;
	while (t != nullptr and not hi_es) {
		if (t->_k == num) { 
			hi_es = true;
		} else {
			t = t->_seg; 
		}
	}
	if (hi_es) {
		freq = t->_p.frequencia();
	} else {
		throw error(ErrNumeroInexistent);
	}
	return freq;
}

// Cost: θ(1)
bool call_registry::es_buit() const throw() {
	return _nelem==0;
}

// Cost: θ(1)
nat call_registry::num_entrades() const throw() {
	return _nelem;
}

// Cost: Θ(n^2), on n és el nombre d'elements del call_registry.
void call_registry::dump(vector<phone>& V) const throw(error) {
    // Iterar sobre la taula de dispersió y copiar els phones que tenen un nom no nul
    for (int i = 0; i < _M; ++i) {
        node_taula* current = _taula[i];
        while (current != nullptr) {
            // Verificar que el nombre no sigui nul
            if (current->_p.nom() != "") {
				for(int j=0; j<V.size(); j++){
					if(current->_p.nom()==V[j].nom()){
						throw error(ErrNomRepetit);
					}
				}
                // Afegir el phone al vector temporal
                V.push_back(current->_p);
            }
            current = current->_seg;
        }
    }
}
