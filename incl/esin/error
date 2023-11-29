// $Id: error.hpp 81 2005-02-28 11:19:06Z conrado $

#ifndef _ERROR_HPP
#define _ERROR_HPP

#include <string>
#include <iostream>
#include <map>


using std::string;
using std::ostream;
using std::istream;

class error {
public: 

  error(int codigo = 0,
        const string& nom_mod = "", const string& msg = "");
  static void load_messages(istream& is);
  int codigo() const;
  string modulo() const;
  string mensaje() const;
  void print(ostream& os) const;
private:
  int _codigo;
  string _modulo;
  string _mensaje;
  static std::map<int,string> tabla_mensajes;
  static std::map<int,string> tabla_modulos;
};

ostream& operator<<(ostream& os, const error& e);
#endif
