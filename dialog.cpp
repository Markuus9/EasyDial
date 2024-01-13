#include "dialog.hpp"

void dialog::dialog(easy_dial& easy, const string& input, vector<string>& answers, nat& numtelf) throw(){
	nat mida = input.size();
	nat i = 0;
	bool fi = false;
	string retorn;
	retorn = easy.inici();
	numtelf = easy.num_telf();
	while (i < mida and not fi) {
		if (input[i] == phone::ENDCHAR) {
			// Indiquem que ja hem escrit un nom complet
			fi = true;
		}
		else {
			try {
				if (input[i] == phone::DELETECHAR) {
					// Esborrem el caràcter premut anteriorment
					retorn = easy.anterior();
				}
				else {
					// Es prem un nou caràcter (input[i])
					retorn = easy.seguent(input[i]);
				}
				answers.push_back(retorn);
				numtelf = easy.num_telf();
			}
			catch (string &error) {
				answers.push_back(error);
				numtelf = 0;
				fi = true;
			}
		}
		++i;
	}
}
