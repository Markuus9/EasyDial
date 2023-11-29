#include <algorithm>
#include <fstream>
#include <iostream>
#include <list>
#include <string>
#include <utility>
#include <vector>

#include <esin/error>
#include <esin/gen_driver>
#include <esin/util>

#include "phone.hpp"
#include "call_registry.hpp"
#include "easy_dial.hpp"
#include "dialog.hpp"

using util::nat;
using namespace std;

void* user_init(gen_driver& dr) { 
  string id = dr.args(1);
  string tid = dr.args(2);
  
  if (tid == "phone") {
    // init phone
    if ((dr.nargs() < 2) or (dr.nargs() > 5))
      throw error(gen_driver::WrongTypeArgs, gen_driver::nom_mod,  
	          gen_driver::WrongTypeArgsMsg);
    if (dr.nargs() == 2)
      return static_cast<void*>(new phone());
    if (util::toint(dr.args(3)) < 0)
      throw error(gen_driver::WrongTypeArgs, gen_driver::nom_mod, 
                  gen_driver::WrongTypeArgsMsg);
    nat numero = static_cast<nat>(util::toint(dr.args(3)));    
    if (dr.nargs() == 3)
      return static_cast<void*>(new phone(numero));
    if (dr.nargs() == 4)
      return static_cast<void*>(new phone(numero, dr.args(4)));
    nat frequencia = static_cast<nat>(util::toint(dr.args(5)));
    if (dr.nargs() == 5)
      return static_cast<void*>(new phone(numero, dr.args(4), frequencia));
  } 
  else if (tid == "call_registry") {
    // init call_registry
    if (dr.nargs() != 2)
      throw error(gen_driver::WrongTypeArgs, gen_driver::nom_mod,
		  gen_driver::WrongNumArgsMsg);
    return static_cast<void*>(new call_registry());
  } 
  else if (tid == "easy_dial") {
    // init easy_dial
    if ((dr.nargs() < 2) or (dr.nargs() > 3))
      throw error(gen_driver::WrongTypeArgs, gen_driver::nom_mod,
		  gen_driver::WrongNumArgsMsg);
    if (dr.nargs() == 2) {
       call_registry* R = dr.object<call_registry>();
       return static_cast<void*>(new easy_dial(*R));
    }
    if (dr.nargs() == 3) {
       call_registry* R = dr.object<call_registry>(dr.args(3));
       return static_cast<void*>(new easy_dial(*R));
    }
  } 
  throw error(gen_driver::WrongTypeArgs, gen_driver::nom_mod,
	      gen_driver::WrongTypeArgsMsg);
}

// funciones de utilidad

// imprimeix phone
ostream& operator<<(ostream& os, const phone& t) {
  os << t.numero() << " " << t.nom() << " " << t.frequencia();
  return os;
}

// imprimeix un boolea
ostream& operator<=(ostream& os, bool b) {
  os << (b ? "true" : "false");
  return os;
}

// imprimeix vector de T's
template<typename T>
void print_vector(const vector<T>& V, const char sep = ' ', ostream& os = std::cout) {
  typename vector<T>::const_iterator it = V.begin();
  while (it != V.end()) {
    os << *it << sep;
    ++it;
  }
  os << endl;
}

// imprimeix una lista de T's
template <typename T>
ostream& operator<<(ostream& os, const list<T>& L) {
  typename list<T>::const_iterator it = L.begin();
  if (it == L.end()) { os << "[]"; return os; }
  T prev = *it;
  os << "[";
  ++it;
  while (it != L.end()) {
    os << prev << ",";
    prev = *it;
    ++it;
  }
  os << prev << "]"; 
  return os;
}


/* TypeTraits */
template <> const char* TypeTraits<phone>::name = "phone";
template <> const char* TypeTraits<call_registry>::name = "call_registry";
template <> const char* TypeTraits<easy_dial>::name = "easy_dial";


/*-------------------------< PHONE >--------------------------*/

void tracta_numero(gen_driver& dr) {
  dr.get_ostream() << dr.object<phone>() -> numero() << endl;
}

void tracta_nom(gen_driver& dr) {
  dr.get_ostream() << dr.object<phone>() -> nom() << endl;
}

void tracta_frequencia(gen_driver& dr) {
  dr.get_ostream() << dr.object<phone>() -> frequencia() << endl;
}

void tracta_incr_frequencia(gen_driver& dr) {
  dr.get_ostream() << dr.object<phone>() -> operator++() << endl;
}

void tracta_post_incr_frequencia(gen_driver& dr) {
  dr.get_ostream() << dr.object<phone>() -> operator++(1) 
  << endl;
}

void tracta_major(gen_driver& dr) {
  (dr.get_ostream() <= (*dr.object<phone>() > *dr.object<phone>(1))) << endl;
}

void tracta_menor(gen_driver& dr) {
  (dr.get_ostream() <= (*dr.object<phone>() < *dr.object<phone>(1))) << endl;
}

void tracta_iguals(gen_driver& dr) {
  (dr.get_ostream() <= (*dr.object<phone>() == *dr.object<phone>(1))) << endl;
}

void tracta_diferents(gen_driver& dr) {
  (dr.get_ostream() <= (*dr.object<phone>() != *dr.object<phone>(1))) << endl;
}

void tracta_major_igual(gen_driver& dr) {
  (dr.get_ostream() <= (*dr.object<phone>() >= *dr.object<phone>(1))) << endl;
}

void tracta_menor_igual(gen_driver& dr) {
  (dr.get_ostream() <= (*dr.object<phone>() <= *dr.object<phone>(1))) << endl;
}


/*-------------------------< CALL_REGISTRY >--------------------------*/

void tracta_registra_trucada(gen_driver& dr) {
  dr.object<call_registry>() 
    -> registra_trucada(util::toint(dr.args(1)));
}

void tracta_assigna_nom(gen_driver& dr) {
  dr.object<call_registry>() 
    -> assigna_nom(util::toint(dr.args(1)), dr.args(2));
}

void tracta_elimina(gen_driver& dr) {
  dr.object<call_registry>() 
    -> elimina(util::toint(dr.args(1)));
}

void tracta_conte(gen_driver& dr) {
  dr.get_ostream() <= dr.object<call_registry>() -> conte(util::toint(dr.args(1)));
  dr.get_ostream() << endl;
}

void tracta_nom_cr(gen_driver& dr) {
  dr.get_ostream() << dr.object<call_registry>() 
    -> nom(util::toint(dr.args(1))) << endl;
}

void tracta_num_trucades(gen_driver& dr) {
  dr.get_ostream() << dr.object<call_registry>() -> num_trucades(util::toint(dr.args(1)));
  dr.get_ostream() << endl;
}

void tracta_es_buit(gen_driver& dr) {
  dr.get_ostream() <= dr.object<call_registry>() -> es_buit();
  dr.get_ostream() << endl;
}

void tracta_num_entrades(gen_driver& dr) {
  dr.get_ostream() << dr.object<call_registry>() -> num_entrades() << endl;
}

void tracta_dump(gen_driver& dr) {
  vector<phone> V;
  dr.object<call_registry>() -> dump(V);
  sort(V.begin(), V.end());
  print_vector(V);
}


/*-------------------------< EASY_DIAL >--------------------------*/

void tracta_inici(gen_driver& dr) {
  dr.get_ostream() << dr.object<easy_dial>() -> inici() << endl;
}

void tracta_seguent(gen_driver& dr) {
  if (dr.args(1).length() > 1) 
    throw error(gen_driver::WrongTypeArgs, gen_driver::nom_mod,
		gen_driver::WrongNumArgsMsg);
  if (dr.args(1).length() == 0) 
    dr.get_ostream() << dr.object<easy_dial>() 
                     -> seguent(phone::ENDPREF) << endl;
  else
    dr.get_ostream() << dr.object<easy_dial>() 
                     -> seguent(dr.args(1)[0]) << endl;
}

void tracta_anterior(gen_driver& dr) {
  dr.get_ostream() << dr.object<easy_dial>() -> anterior() << endl;
}

void tracta_num_telf(gen_driver& dr) {
  dr.get_ostream() << dr.object<easy_dial>() -> num_telf() << endl;
}

void tracta_comencen(gen_driver& dr) {
  vector<string> V;
  dr.object<easy_dial>() -> comencen(dr.args(1), V);
  print_vector(V);
}

void tracta_longitud_mitjana(gen_driver& dr) {
  dr.get_ostream() << dr.object<easy_dial>() -> longitud_mitjana() << endl;
}


/*-------------------------< DIALOG >--------------------------*/

void tracta_dialog(gen_driver& dr) {
  vector<string> V;
  nat numtel;
  easy_dial* pD = dr.object<easy_dial>();
  dialog::dialog(*pD, dr.args(1), V, numtel);
  //  easy_dial* pD = dr.object<easy_dial>(dr.args(1));
  //  dialog::dialog(*pD, dr.args(2), V, numtel);
  print_vector(V);
  dr.get_ostream() << numtel << endl;
}


/* --------------------------------< MAIN >--------------------------------- */

int main() {
  gen_driver d("EasyDial.err", false);

  d.add_call("numero", tracta_numero, "phone");
  d.add_call("num", tracta_numero, "phone");
  d.add_call("nom", tracta_nom, "phone");
  d.add_call("frequencia", tracta_frequencia, "phone");
  d.add_call("frec", tracta_frequencia, "phone");
  d.add_call("++", tracta_incr_frequencia, "phone");
  d.add_call("pre_incr", tracta_incr_frequencia, "phone");
  d.add_call("post_incr", tracta_post_incr_frequencia, "phone");
  d.add_call(">", tracta_major, "phone", "phone");
  d.add_call("<", tracta_menor, "phone", "phone");
  d.add_call("==", tracta_iguals, "phone", "phone");
  d.add_call("!=", tracta_diferents, "phone", "phone");
  d.add_call(">=", tracta_major_igual, "phone", "phone");
  d.add_call("<=", tracta_menor_igual, "phone", "phone");

  d.add_call("registra", tracta_registra_trucada, "call_registry", "nat");
  d.add_call("r", tracta_registra_trucada, "call_registry", "nat");
  d.add_call("assigna_nom", tracta_assigna_nom, "call_registry", "nat string");
  d.add_call("as", tracta_assigna_nom, "call_registry", "nat string");
  d.add_call("elimina", tracta_elimina, "call_registry", "nat");
  d.add_call("e", tracta_elimina, "call_registry", "nat");
  d.add_call("conte", tracta_conte, "call_registry", "nat");
  d.add_call("c", tracta_conte, "call_registry", "nat");
  d.add_call("nom_cr", tracta_nom_cr, "call_registry", "nat");
  d.add_call("num_trucades", tracta_num_trucades, "call_registry", "nat");
  d.add_call("es_buit", tracta_es_buit, "call_registry");
  d.add_call("num_entrades", tracta_num_entrades, "call_registry");
  d.add_call("dump", tracta_dump, "call_registry");

  d.add_call("inici", tracta_inici, "easy_dial");
  d.add_call("ini", tracta_inici, "easy_dial");
  d.add_call("seguent", tracta_seguent, "easy_dial", "string");
  d.add_call("s", tracta_seguent, "easy_dial", "string");
  d.add_call("anterior", tracta_anterior, "easy_dial");
  d.add_call("an", tracta_anterior, "easy_dial");
  d.add_call("num_telf", tracta_num_telf, "easy_dial");
  d.add_call("comencen", tracta_comencen, "easy_dial", "string");
  d.add_call("longitud_mitj", tracta_longitud_mitjana, "easy_dial"); 
 
  d.add_call("dialog", tracta_dialog, "*", "string");

  // instal·lacio de tipus
  d.install_type<phone>();
  d.install_type<call_registry>();
  d.install_type<easy_dial>();

  d.go();
}

