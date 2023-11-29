#ifndef _DIALOG_HPP
#define _DIALOG_HPP

#include "easy_dial.hpp"
#include <esin/error>
#include <esin/util>
#include <string>
#include <vector>   

using namespace std;
using util::nat;

namespace dialog {

  /* Retorna en el vector answers els resultats obtinguts al processar
  els successius caràcters de l'string input, i en numtelf retorna 
  el número de telèfon corresponent a l'últim nom obtingut o un 0 si
  no existeix aquest nom de telèfon. Si durant el processament de la
  seqüència de tecles representada en input es produís un error
  llavors a answers es registra el missatge d'error associat a
  l'excepció, numtelf és un 0 i finalitza el procés. */
  void dialog(easy_dial& easy, const string& input, 
              vector<string>& answers, nat& numtelf) throw();

};
#endif
