#include "phone.hpp"

// Cost: O(n), on n és el nombre de caràcters del string "name"
phone::phone(nat num, const string& name, nat compt) throw(error) : _num(num), _freq(compt) {
	nat mida = name.size();
	for (nat i = 0; i < mida; ++i) {
		if (name[i] == DELETECHAR or name[i] == ENDCHAR or name[i] == ENDPREF) {
			throw error(ErrNomIncorrecte);
		}
	}
	// Si tots els caràcters de name són legals, no es produeix cap error
	_n = name;
	_n.push_back('\000');
}

// Cost: θ(1)
phone::phone(const phone& T) throw(error) {
	_num = T._num;
	_n = T._n;
	_freq = T._freq;
}

// Cost: θ(1)
phone& phone::operator=(const phone& T) throw(error) {
	if (this != &T) {
		_num = T._num;
		_n = T._n;
		_freq = T._freq;
	}
	return *this;
}

// Cost: θ(1)
phone::~phone() throw() {
}

// Cost: θ(1)
nat phone::numero() const throw() {
	return _num;
}

// Cost: θ(1)
string phone::nom() const throw() {
	return _n;
}

// Cost: θ(1)
nat phone::frequencia() const throw() {
	return _freq;
}

// Cost: θ(1)
phone& phone::operator++() throw() {
	++_freq;
	return *this;
}

// Cost: θ(1)
phone phone::operator++(int) throw() {
	phone p = *this;
	++_freq;
	return p;
}

// Cost: θ(1)
bool phone::operator==(const phone& T) const throw() {
	return ((_freq == T._freq) and (_n==T._n));
}

// Cost: θ(1)
bool phone::operator!=(const phone& T) const throw() {
	return _freq != T._freq;
}

// Cost: θ(1)
bool phone::operator<(const phone& T) const throw() {
	bool res;
	if (*this != T) { // Si les freqüències són diferents, les comparem
		res = _freq < T._freq;
	}
	else {
		// Si les freqüències són iguals, comparem els noms associats als números de telèfons
		res = _n < T._n;
	}
	return res;
}

// Cost: θ(1)
bool phone::operator>(const phone& T) const throw() {
	bool res;
	if (*this != T) { // Si les freqüències són diferents, les comparem
		res = _freq > T._freq;
	}
	else {
		// Si les freqüències són iguals, comparem els noms associats als números de telèfons
		res = _n > T._n;
	}
	return res;
}

// Cost: θ(1)
bool phone::operator<=(const phone& T) const throw() {
	bool res;
	if (*this != T) { // Si les freqüències són diferents, les comparem
		res = _freq <= T._freq;
	}
	else {
		// Si les freqüències són iguals, comparem els noms associats als números de telèfons
		res = _n <= T._n;
	}
	return res;
}

// Cost: θ(1)
bool phone::operator>=(const phone& T) const throw() {
	bool res = false;
	if (*this != T) { // Si les freqüències són diferents, les comparem
		res = _freq >= T._freq;
	}
	else {
		// Si les freqüències són iguals, comparem els noms associats als números de telèfons
		res = _n >= T._n;
	}
	return res;
}

