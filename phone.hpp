#ifndef _PHONE_HPP
#define _PHONE_HPP

#include <string>
#include <esin/error>
#include <esin/util>   

using namespace std;
using util::nat;

class phone{
public:

  /* Construeix un telèfon a partir del seu número (num), el seu nom
  (name) i el seu comptador de trucades (compt). 
  Es produeix un error si name no és un identificador legal. */
  phone(nat num=0, const string& name="", nat compt=0) throw(error);

  /* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
  phone(const phone& T) throw(error);
  phone& operator=(const phone& T) throw(error);
  ~phone() throw();

  /* Retorna el número de telèfon. */
  nat numero() const throw();

  /* Retorna el nom associat al telèfon, eventualment l'string buit. */
  string nom() const throw();

  /* Retorna el número de vegades que s'ha trucat al telèfon. */
  nat frequencia() const throw();

  /* Operador de preincrement. 
  Incrementa en 1 el número de vegades que s'ha trucat al telèfon i
  retorna una referència a aquest telèfon. */
  phone& operator++() throw();

  /* Operador de postincrement. 
  Incrementa en 1 el número de vegades que s'ha trucat al telèfon i
  retorna una còpia d'aquest telèfon sense incrementar. */
  phone operator++(int) throw();

  /* Operadors de comparació.  L'operador > retorna cert, si i només si, el
  telèfon sobre el que s'aplica el mètode és més freqüent que el
  telèfon T, o a igual freqüència, el nom associat al telèfon és
  major en ordre lexicogràfic que el nom associat a T. 
  La resta d'operadors es defineixen consistentment respecte a >. */
  bool operator==(const phone& T) const throw();
  bool operator!=(const phone& T) const throw();
  bool operator<(const phone& T) const throw();
  bool operator>(const phone& T) const throw();
  bool operator<=(const phone& T) const throw();
  bool operator>=(const phone& T) const throw();

  /* Caràcters especials no permesos en un nom de telèfon. */
  static const char DELETECHAR = '<';
  static const char ENDCHAR = '|';
  static const char ENDPREF = '\0';

  /* Gestió d'errors. */
  static const int  ErrNomIncorrecte = 11;
  
private:
  #include "phone.rep"
};
#endif
