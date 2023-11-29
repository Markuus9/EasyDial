#include "phone.hpp"

/* Construeix un telèfon a partir del seu número (num), el seu nom
(name) i el seu comptador de trucades (compt). 
Es produeix un error si name no és un identificador legal. */
phone::phone(nat num=0, const string& name="", nat compt=0) throw(error){}

/* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
phone::phone(const phone& T) throw(error){}
phone::phone& operator=(const phone& T) throw(error){}
phone::~phone() throw(){}

/* Retorna el número de telèfon. */
nat phone::numero() const throw(){}

/* Retorna el nom associat al telèfon, eventualment l'string buit. */
string phone::nom() const throw(){}

/* Retorna el número de vegades que s'ha trucat al telèfon. */
nat phone::frequencia() const throw(){}

/* Operador de preincrement. 
Incrementa en 1 el número de vegades que s'ha trucat al telèfon i
retorna una referència a aquest telèfon. */
phone& phone::operator++() throw(){}

/* Operador de postincrement. 
Incrementa en 1 el número de vegades que s'ha trucat al telèfon i
retorna una còpia d'aquest telèfon sense incrementar. */
phone phone::operator++(int) throw(){}

/* Operadors de comparació.  L'operador > retorna cert, si i només si, el
telèfon sobre el que s'aplica el mètode és més freqüent que el
telèfon T, o a igual freqüència, el nom associat al telèfon és
major en ordre lexicogràfic que el nom associat a T. 
La resta d'operadors es defineixen consistentment respecte a >. */
bool phone::operator==(const phone& T) const throw(){}
bool phone::operator!=(const phone& T) const throw(){}
bool phone::operator<(const phone& T) const throw(){}
bool phone::operator>(const phone& T) const throw(){}
bool phone::operator<=(const phone& T) const throw(){}
bool phone::operator>=(const phone& T) const throw(){}
