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
	//...
}

void call_registry::assigna_nom(nat num, const string& name) throw(error) {
	//...
}

void elimina(nat num) throw(error) {
	//...
}

bool call_registry::conte(nat num) const throw() {
	//...
}

string call_registry::nom(nat num) const throw(error) {
	//...
}

nat call_registry::num_trucades(nat num) const throw(error) {
	//...
}

bool call_registry::es_buit() const throw() {
	//...
}

nat call_registry::num_entrades() const throw() {
	//...
}

void call_registry::dump(vector<phone>& V) const throw(error) {
	//...
}
