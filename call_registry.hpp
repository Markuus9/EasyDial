#ifndef _CALL_REGISTRY_HPP
#define _CALL_REGISTRY_HPP

#include "phone.hpp"
#include <esin/error>
#include <esin/util>   
#include <string>
#include <vector>

using namespace std;
using util::nat;

class call_registry {
public:

  /* Construeix un call_registry buit. */
  call_registry() throw(error);

  /* Constructor per còpia, operador d'assignació i destructor. */
  call_registry(const call_registry& R) throw(error);
  call_registry& operator=(const call_registry& R) throw(error);
  ~call_registry() throw();

  /* Registra que s'ha realitzat una trucada al número donat, 
  incrementant en 1 el comptador de trucades associat. Si el número no 
  estava prèviament en el call_registry afegeix una nova entrada amb 
  el número de telèfon donat, l'string buit com a nom i el comptador a 1. */
  void registra_trucada(nat num) throw(error);

 /* Assigna el nom indicat al número donat.
  Si el número no estava prèviament en el call_registry, s'afegeix
  una nova entrada amb el número i nom donats, i el comptador 
  de trucades a 0. 
  Si el número existia prèviament, se li assigna el nom donat. */
  void assigna_nom(nat num, const string& name) throw(error);

  /* Elimina l'entrada corresponent al telèfon el número de la qual es dóna.
  Es produeix un error si el número no estava present. */
  void elimina(nat num) throw(error);

  /* Retorna cert si i només si el call_registry conté un 
  telèfon amb el número donat. */
  bool conte(nat num) const throw();

  /* Retorna el nom associat al número de telèfon que s'indica.
  Aquest nom pot ser l'string buit si el número de telèfon no
  té un nom associat. Es produeix un error si el número no està en
  el call_registry. */
  string nom(nat num) const throw(error);

  /* Retorna el comptador de trucades associat al número de telèfon 
  indicat. Aquest número pot ser 0 si no s'ha efectuat cap trucada a
  aquest número. Es produeix un error si el número no està en el 
  call_registry. */
  nat num_trucades(nat num) const throw(error);

  /* Retorna cert si i només si el call_registry està buit. */
  bool es_buit() const throw();

  /* Retorna quants números de telèfon hi ha en el call_registry. */
  nat num_entrades() const throw();

  /* Fa un bolcat de totes les entrades que tenen associat un
  nom no nul sobre un vector de phone.
  Comprova que tots els noms dels telèfons siguin diferents; 
  es produeix un error en cas contrari. */
  void dump(vector<phone>& V) const throw(error);

  /* Gestió d'errors. */
  static const int  ErrNumeroInexistent = 21;
  static const int  ErrNomRepetit       = 22;

private:
  #include "call_registry.rep"
};
#endif
