#ifndef _EASY_DIAL_HPP
#define _EASY_DIAL_HPP

#include "call_registry.hpp"
#include <esin/error>
#include <esin/util>   
#include <string>
#include <vector>

using namespace std;
using util::nat;

class easy_dial {
public:

  /* Construeix un easy_dial a partir de la 
  informació continguda en el call_registry donat. El
  prefix en curs queda indefinit. */
  easy_dial(const call_registry& R) throw(error);

  /* Tres grans. Constructor per còpia, operador d'assignació i destructor. */
  easy_dial(const easy_dial& D) throw(error);
  easy_dial& operator=(const easy_dial& D) throw(error);
  ~easy_dial() throw();

  /* Inicialitza el prefix en curs a buit. Retorna el nom de F(S, '');
  si F (S, '') no existeix llavors retorna l'string buit. */
  string inici() throw();

  /* Retorna el nom de F(S, p') on p' és el prefix resultant d'afegir
  el caràcter c al final del prefix en curs p i
  fa que el nou prefix en curs sigui p'.
  Si F(S, p) existeix però F(S, p') no existeix llavors retorna 
  l'string buit. 
  Si no existeix F(S, p) (i per tant tampoc pot existir F(S, p'))
  llavors es produeix un error i el prefix en curs queda indefinit. 
  Naturalment, es produeix un error si el prefix en curs inicial p 
  fos indefinit. */
  string seguent(char c) throw(error);

  /* Elimina l'últim caràcter del prefix en curs p = p' · a
  (a és el caràcter eliminat). Retorna el nom F(S, p') 
  i fa que el nou prefix en curs sigui p'. 
  Es produeix un error si p fos buida i si es fa que el prefix en curs
  quedi indefinit. Òbviament, també es produeix un error 
  si p fos indefinit. */
  string anterior() throw(error);

  /* Retorna el número de telèfon de F(S, p), sent p
  el prefix en curs. Es produeix un error si p és indefinit o si
  no existeix F(S, p). */
  nat num_telf() const throw(error);

  /* Retorna en el vector result tots els noms dels contactes de 
  telèfon que comencen amb el prefix pref, en ordre lexicogràfic creixent. */
  void comencen(const string& pref, vector<string>& result) const throw(error);

  /* Retorna el número mitjà de pulsacions necessàries para obtenir un
  telèfon. Formalment, si X és el conjunt de noms emmagatzemats en
  el easy_dial i t(s) és el número de pulsacions mínimes
  necessàries (= número de crides a l'operació seguent) per
  obtenir el telèfon el nom del qual és s. La funció retorna la suma
      Pr(s) · t(s)
  per tots els telèfons s del conjunt X, sent Pr(s) la probabilitat de
  telefonar a s. La probabilitat s'obté dividint la freqüència de s per
  la suma de totes les freqüències. */
  double longitud_mitjana() const throw();

  /* Gestió d'errors. */
  static const int  ErrPrefixIndef        = 31;
  static const int  ErrNoExisteixTelefon  = 32;
  static const int  ErrNoHiHaAnterior     = 33;

private:
  #include "easy_dial.rep"
};
#endif
