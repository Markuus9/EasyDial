#include "call_registry.hpp"

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
	}
	if (p != nullptr) {
		p->_seg = nullptr;
	}
	return pprimer;
}

void call_registry::esborra_nodes(node_taula* p) {
	if (p != nullptr) {
		esborra_nodes(p->_seg);
		delete p;
	}
}

int call_registry::hash(const nat &x) {
	static long const MULT = 31415926;
	long int y = ((x * x * MULT) << 20) >> 4;
	return y;
}

call_registry::call_registry() throw(error) {
	_M = 5;
	_nelem = 0;
  	_taula = new node_taula*[_M];
  	for (int i=0; i < _M; ++i) {
   	 _taula[i] = nullptr;
  	}
}

call_registry::call_registry(const call_registry& R) throw(error) {
	_M = R._M;
	_nelem = R._nelem;
	_taula = new node_taula*[_M];
	for (int i = 0; i<_M; ++i) {
		_taula[i] = copia_nodes(R._taula[i]);
	}
}

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

call_registry::~call_registry() throw() {
	for (int i=0; i < _M; ++i) {
		esborra_nodes(_taula[i]);
	}
	delete _taula;
}

void call_registry::registra_trucada(nat num) throw(error) {
	int i = hash(num) % _M;
	node_taula* t = _taula[i];
	bool hi_es = false;
	while (t != nullptr and not hi_es) {
		if (t->_k == num) { 
			hi_es = true;
			t->_p++;
		} else {
			t = t->_seg; 
		}
	}
	if(not hi_es){
		node_taula* nou = new node_taula;
		string buit = "";
		phone p(num, "", 1);
		nou->_p = p;
		nou->_k = num;
		t = nou; 
		++_nelem;
	}
}

void call_registry::assigna_nom(nat num, const string& name) throw(error) {
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
	if(not hi_es){
		node_taula* nou = new node_taula;
		phone p(num, name, 0);
		nou->_p = p;
		nou->_k = num;
		_taula[i] = nou; 
		++_nelem;
	} else {
		nat freq = t->_p.frequencia();
		phone p(num, name, freq);
		t->_p = p;
	}
}

void call_registry::elimina(nat num) throw(error) {
	nat i = hash(num);
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

bool call_registry::es_buit() const throw() {
	return _nelem==0;
}

nat call_registry::num_entrades() const throw() {
	return _nelem;
}

// Cost: Θ(n^2), n: nombre d'elements de call_registry.
void call_registry::dump(vector<phone>& V) const throw(error) {
    // Iterar sobre la tabla de dispersión y copiar los phones no nulos
    for (int i = 0; i < _M; ++i) {
        node_taula* current = _taula[i];
        while (current != nullptr) {
            // Verificar que el nombre no sea nulo
            if (current->_p.nom() != "") {
				for(int j=0; j<V.size(); j++){
					if(current->_p.nom()==V[j].nom()){
						throw error(ErrNomRepetit);
					}
				}
                // Agregar el phone al vector temporal
                V.push_back(current->_p);
            }
            current = current->_seg;
        }
    }
}