#include "phone.hpp"

nat phone::numero() const throw() {
	return num;
}

string phone::nom() const throw() {
	return n;
}

nat phone::frequencia() const throw() {
	return freq;
}

phone& phone::operator++() throw() {
	++freq;
	return this;
}

phone phone::operator++(int) throw() {
	phone p = *this;
	++freq;
	return p;
}

bool phone::operator==(const phone& T) const throw() {
	return freq == freq.T;
}

bool phone::operator!=(const phone& T) const throw() {
	return freq != freq.T;
}

bool operator<(const phone& T) const throw() {
	
}


>bool operator>(const phone& T) const throw();
bool res;
	if (*this != T) {
		res = freq > T.freq;
	}
	else {
		// Si les freqüències són iguals, comparem els noms associats als números de telèfons
		res = 
	}
