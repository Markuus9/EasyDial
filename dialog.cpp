#include "dialog.hpp"

void dialog::dialog(easy_dial& easy, const string& input, vector<string>& answers, nat& numtelf) throw(){
	try {
		answers.push_back(easy.inici());
		for(int i = 0; i < input.size(); i++){
			if (input[i] == phone::DELETECHAR) {
				// Esborrem el caràcter premut anteriorment
				answers.push_back(easy.anterior());
			} else if(input[i] == phone::ENDCHAR){
				// Es prem un nou caràcter (input[i])
				answers.push_back(easy.seguent('\000'));
			} else {
				answers.push_back(easy.seguent(input[i]));
			}
		}
		numtelf = easy.num_telf();
	} catch (error a){
		numtelf = 0;
		answers.push_back(a.mensaje());
	}
}
