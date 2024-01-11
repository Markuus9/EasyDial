###!--------------------------
###! JOC DE PROVES: easy_dial
###!--------------------------
###!
###! NOTA:
###! per provar el metode "seguent" agafant
###! com argument el caracter phone::ENDPREF
###! aquest driver ha de llegir la cadena buida
###! (""), es a dir a la linea hem de escriure:
###!       seguent ""
###!
###!--------------------------
###! Index del joc de proves
###!--------------------------
###!
###!   0 easy_dial SENSE TELEFONS
###!   0.1             easy_dial BUIT (call_registry BUIT)
###!   0.1.1       recorreguts sense fer previament inici
###!   0.1.2      recorreguts havent fet previament inici
###!   0.1.3    altres metodes: comencen + longitud_mitj
###!   0.2               easy_dial BUIT (call_registry amb
###!   0.2.1       recorreguts sense fer previament inici
###!   0.2.2      recorreguts havent fet previament inici
###!   0.2.3    altres metodes: comencen + longitud_mitj
###!   
###!   1 easy_dial AMB UN TELEFON
###!   1.1         recorreguts sense fer previament inici
###!   1.2        recorreguts havent fet previament inici
###!   1.3      altres metodes: comencen + longitud_mitj
###!   
###!   2 easy_dial AMB DOS TELEFONS
###!   2.1         no comparteixen prefixe
###!   2.1.1       1001 > 1002
###!   2.1.2       1001 < 1002
###!   2.2         comparteixen prefixe |p| = 1
###!   2.2.1       1001 > 1002
###!   2.2.2       1001 < 1002
###!   2.3         comparteixen prefixe |p| > 1
###!   2.3.1       1001 > 1002
###!   2.3.2       1001 < 1002
###!   2.4         un es prefixe de l'altre
###!   2.4.1       1001 > 1002
###!   2.4.2       1001 < 1002
###!   2.5         v es prefixe de l'altre i |v| = 1
###!   2.5.1       1001 > 1002
###!   2.5.2       1001 < 1002
###!   
###!   3 easy_dial AMB TRES TELEFONS
###!   3.1   Exemple que comprova que no se ha d'introduir
###!   
###!   5 easy_dial AMB CINC TELEFONS
###!   5.1                                     recorreguts
###!   5.1.1          baixant fins mes enlla de les fulles
###!   5.1.2        baixant i tornant enrera fins la arrel
###!   5.1.3                  recorregut de tots els nodes
###!   5.2      altres metodes: comencen + longitud_mitj
###!
###!  10 easy_dial AMB DEU TELEFONS
###!  10.1   	                              recorreguts
###!  10.1.1 	     baixant fins mes enlla de les fulles
###!  10.1.2 	   baixant i tornant enrera fins la arrel
###!  10.1.3                  recorregut de tots els nodes
###!  10.2      altres metodes: comencen + longitud_mitj
###!  
###!  
###!-------------------------
###0 easy_dial SENSE TELEFONS
###!-------------------------
###!
###!--------------------------------------------------
###0.1             easy_dial BUIT (call_registry BUIT)
###!--------------------------------------------------
###!
#init rc call_registry
###!
###!--------------------------------------------------
###0.1.1       recorreguts sense fer previament inici
###!--------------------------------------------------
###!
#init d easy_dial rc
#inici

##
#inici

##
#d destroy
###!
#init d easy_dial rc
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
###!--------------------------------------------------
###0.1.2      recorreguts havent fet previament inici
###!--------------------------------------------------
###!
#init d easy_dial rc
#inici

##
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
###!--------------------------------------------------
###0.1.3    altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""

##
###!
#comencen "Z"

##
###!
#comencen "ZZ"

##
###!
#longitud_mitj
0
##0
###!
#d destroy
###!
#rc destroy
###!
###!
###!--------------------------------------------------
###0.2               easy_dial BUIT (call_registry amb
###!                                telefon sense nom)
###!--------------------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 ""
###!
###!--------------------------------------------------
###0.2.1       recorreguts sense fer previament inici
###!--------------------------------------------------
###!
#init d easy_dial rc
#inici

##
#inici

##
#d destroy
###!
#init d easy_dial rc
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
###!--------------------------------------------------
###0.2.2      recorreguts havent fet previament inici
###!--------------------------------------------------
###!
#init d easy_dial rc
#inici

##
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
#init d easy_dial rc
#inici

##
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici

##
#d destroy
###!
###!--------------------------------------------------
###0.2.3    altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""

##
###!
#comencen "Z"

##
###!
#comencen "ZZ"

##
###!
#longitud_mitj
0
##0
###!
#d destroy
###!
###!
#rc destroy
###!
###!
###!
###!-------------------------
###1 easy_dial AMB UN TELEFON
###!-------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#registra 1001
###!
###!--------------------------------------------------
###1.1         recorreguts sense fer previament inici
###!--------------------------------------------------
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#seguent M
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#seguent M
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#seguent M
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
###!--------------------------------------------------
###1.2        recorreguts havent fet previament inici
###!--------------------------------------------------
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#seguent M

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#inici
MARIA
##MARIA
#d destroy
###!
#init d easy_dial rc
#inici
MARIA
##MARIA
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#seguent M
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#inici
MARIA
##MARIA
#d destroy
###!
###!--------------------------------------------------
###1.3      altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
MARIA 
##MARIA 
#comencen "Z"

##
#comencen "M"
MARIA 
##MARIA 
#comencen "MZ"

##
#comencen "MA"
MARIA 
##MARIA 
#comencen "MAZ"

##
#comencen "MAR"
MARIA 
##MARIA 
#comencen "MARZ"

##
#comencen "MARI"
MARIA 
##MARIA 
#comencen "MARIZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARIAN"

##
#comencen "MARIANO"

##
###!
#longitud_mitj
0
##0
###!
#d destroy
###!
###!
#rc destroy
###!
###!
###!
###!---------------------------
###2 easy_dial AMB DOS TELEFONS
###!---------------------------
###!
###!----------------------------------------
###2.1         no comparteixen prefixe
###!----------------------------------------
###!
###!----------------------------------------
###2.1.1       1001 > 1002
###!----------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 JOSEP
#registra 1001
#registra 1001
#registra 1002
###!
###!--------------------------------------------------
###2.1.1.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.1.1.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#seguent O

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent S
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#seguent O

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent J
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.1.1.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#seguent Z

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#seguent ""

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#seguent O

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#seguent J

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.1.1.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.1.1.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent J
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
###!
###!
###!--------------------------------------------------
###2.1.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent J
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
###!
###!
###!
#d destroy
###!
###!
###!--------------------------------------------------
###2.1.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
JOSEP MARIA 
##JOSEP MARIA 
#comencen "Z"

##
#comencen "M"
MARIA 
##MARIA 
#comencen "J"
JOSEP 
##JOSEP 
#comencen "MAZ"

##
#comencen "JOZ"

##
#comencen "MAR"
MARIA 
##MARIA 
#comencen "JOS"
JOSEP 
##JOSEP 
#comencen "MARIZ"

##
#comencen "JOSEZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "JOSEP"
JOSEP 
##JOSEP 
#comencen "MARIAZ"

##
#comencen "JOSEPZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!
###!----------------------------------------
###2.1.2       1001 < 1002
###!----------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 JOSEP
#registra 1001
#registra 1002
#registra 1002
###!
###!
###!--------------------------------------------------
###2.1.2.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.1.2.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent O
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.1.2.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent Z

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent ""

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#seguent A

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.1.2.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.1.2.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
JOSEP
##JOSEP
###!
###!--------------------------------------------------
###2.1.2.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
###!
###!
###!--------------------------------------------------
###2.1.2.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
JOSEP MARIA 
##JOSEP MARIA 
#comencen "Z"

##
#comencen "M"
MARIA 
##MARIA 
#comencen "J"
JOSEP 
##JOSEP 
#comencen "MAZ"

##
#comencen "JOZ"

##
#comencen "MAR"
MARIA 
##MARIA 
#comencen "JOS"
JOSEP 
##JOSEP 
#comencen "MARIZ"

##
#comencen "JOSEZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "JOSEP"
JOSEP 
##JOSEP 
#comencen "MARIAZ"

##
#comencen "JOSEPZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
###!
#rc destroy
###!
###!
###!----------------------------------------
###2.2         comparteixen prefixe |p| = 1
###!----------------------------------------
###!
###!----------------------------------------
###2.2.1       1001 > 1002
###!----------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 MIQUEL
#registra 1001
#registra 1001
#registra 1002
###!
###!--------------------------------------------------
###2.2.1.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.2.1.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.2.1.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#seguent I

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Q
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent I
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.2.1.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#seguent Z

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#seguent ""

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#seguent I

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.2.1.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.2.1.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent M
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
###!
###!--------------------------------------------------
###2.2.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent M
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
###!
###!
#d destroy
###!
###!--------------------------------------------------
###2.2.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
MARIA MIQUEL 
##MARIA MIQUEL 
#comencen "Z"

##
#comencen "M"
MARIA MIQUEL 
##MARIA MIQUEL 
#comencen "MZ"

##
#comencen "MA"
MARIA 
##MARIA 
#comencen "MI"
MIQUEL 
##MIQUEL 
#comencen "MAZ"

##
#comencen "MAR"
MARIA 
##MARIA 
#comencen "MIZ"

##
#comencen "MIQ"
MIQUEL 
##MIQUEL 
#comencen "MARIZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MIQUEZ"

##
#comencen "MIQUEL"
MIQUEL 
##MIQUEL 
#comencen "MARIAZ"

##
#comencen "MIQUELZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!----------------------------------------
###2.2.2       1001 < 1002
###!----------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 MIQUEL
#registra 1001
#registra 1002
#registra 1002
###!
###!--------------------------------------------------
###2.2.2.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.2.2.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.2.2.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.2.2.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MIQUEL
##MIQUEL
#seguent Z

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent ""

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#seguent A

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.2.2.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.2.2.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MIQUEL
##MIQUEL
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1002
##1002
###!
###!--------------------------------------------------
###2.2.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MIQUEL
##MIQUEL
#num_telf
1002
##1002
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
###!
###!
#d destroy
###!
###!--------------------------------------------------
###2.2.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
MARIA MIQUEL 
##MARIA MIQUEL 
#comencen "Z"

##
#comencen "M"
MARIA MIQUEL 
##MARIA MIQUEL 
#comencen "MZ"

##
#comencen "MA"
MARIA 
##MARIA 
#comencen "MI"
MIQUEL 
##MIQUEL 
#comencen "MAZ"

##
#comencen "MAR"
MARIA 
##MARIA 
#comencen "MIZ"

##
#comencen "MIQ"
MIQUEL 
##MIQUEL 
#comencen "MARIZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MIQUEZ"

##
#comencen "MIQUEL"
MIQUEL 
##MIQUEL 
#comencen "MARIAZ"

##
#comencen "MIQUELZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!
###!--------------------------------------------------
###2.3         comparteixen prefixe |p| > 1
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.3.1       1001 > 1002
###!--------------------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 MARTA
#registra 1001
#registra 1001
#registra 1002
###!
###!--------------------------------------------------
###2.3.1.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.3.1.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.3.1.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.3.1.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#seguent Z

##
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#seguent ""

##
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#seguent A

##
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.3.1.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.3.1.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent M
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
###!
###!--------------------------------------------------
###2.3.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent M
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
###!
###!
#d destroy
###!
###!--------------------------------------------------
###2.3.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
MARIA MARTA 
##MARIA MARTA 
#comencen "Z"

##
#comencen "M"
MARIA MARTA 
##MARIA MARTA 
#comencen "MAZ"

##
#comencen "MAR"
MARIA MARTA 
##MARIA MARTA 
#comencen "MARZ"

##
#comencen "MARI"
MARIA 
##MARIA 
#comencen "MART"
MARTA 
##MARTA 
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARTA"
MARTA 
##MARTA 
#comencen "MARIAZ"

##
#comencen "MARTAZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!--------------------------------------------------
###2.3.2       1001 < 1002
###!--------------------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 MARTA
#registra 1001
#registra 1002
#registra 1002
###!
###!--------------------------------------------------
###2.3.2.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.3.2.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.3.2.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MARTA
##MARTA
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.3.2.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MARTA
##MARTA
#seguent Z

##
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent ""

##
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#seguent A

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.3.2.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.3.2.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MARTA
##MARTA
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MARTA
##MARTA
#num_telf
1002
##1002
###!
###!--------------------------------------------------
###2.3.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MARTA
##MARTA
#num_telf
1002
##1002
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MARTA
##MARTA
###!
###!
#d destroy
###!
###!--------------------------------------------------
###2.3.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
MARIA MARTA 
##MARIA MARTA 
#comencen "Z"

##
#comencen "M"
MARIA MARTA 
##MARIA MARTA 
#comencen "MAZ"

##
#comencen "MAR"
MARIA MARTA 
##MARIA MARTA 
#comencen "MARZ"

##
#comencen "MARI"
MARIA 
##MARIA 
#comencen "MART"
MARTA 
##MARTA 
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARTA"
MARTA 
##MARTA 
#comencen "MARIAZ"

##
#comencen "MARTAZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!
###!--------------------------------------------------
###2.4         un es prefixe de l'altre
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.4.1       1001 > 1002
###!--------------------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 MAR
#registra 1001
#registra 1001
#registra 1002
###!
###!--------------------------------------------------
###2.4.1.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.4.1.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.4.1.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.4.1.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#seguent Z

##
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#seguent ""

##
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#seguent A

##
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.4.1.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.4.1.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent M
MAR
##MAR
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
###!
###!--------------------------------------------------
###2.4.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent M
MAR
##MAR
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
###!
###!
#d destroy
###!
###!--------------------------------------------------
###2.4.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
MAR MARIA 
##MAR MARIA 
#comencen "Z"

##
#comencen "M"
MAR MARIA 
##MAR MARIA 
#comencen "MAZ"

##
#comencen "MAR"
MAR MARIA 
##MAR MARIA 
#comencen "MARZ"

##
#comencen "MARI"
MARIA 
##MARIA 
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARIAZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!
###!----------------------------------------
###2.4.2       1001 < 1002
###!----------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 MAR
#registra 1001
#registra 1002
#registra 1002
###!
###!--------------------------------------------------
###2.4.2.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.4.2.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.4.2.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MAR
##MAR
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.4.2.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MAR
##MAR
#seguent Z

##
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent ""

##
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#seguent A

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MAR
##MAR
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.4.2.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.4.2.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MAR
##MAR
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MAR
##MAR
#num_telf
1002
##1002
###!
###!--------------------------------------------------
###2.4.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MAR
##MAR
#num_telf
1002
##1002
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MAR
##MAR
###!
###!
#d destroy
###!
###!--------------------------------------------------
###2.4.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
MAR MARIA 
##MAR MARIA 
#comencen "Z"

##
#comencen "M"
MAR MARIA 
##MAR MARIA 
#comencen "MAZ"

##
#comencen "MAR"
MAR MARIA 
##MAR MARIA 
#comencen "MARZ"

##
#comencen "MARI"
MARIA 
##MARIA 
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARIAZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!
###!--------------------------------------------------
###2.5         v es prefixe de l'altre i |v| = 1
###!           La mida del prefixe necesari per acc-
###!           edir a v coincideix amb la seva mida
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.5.1       1001 > 1002
###!--------------------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 M
#registra 1001
#registra 1001
#registra 1002
###!
###!--------------------------------------------------
###2.5.1.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.5.1.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.5.1.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.5.1.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#seguent Z

##
#anterior
M
##M
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#seguent ""

##
#anterior
M
##M
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#seguent A

##
#anterior
M
##M
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.5.1.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.5.1.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#num_telf
1001
##1001
#seguent M
M
##M
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
###!
###!--------------------------------------------------
###2.5.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
MARIA
##MARIA
#seguent M
M
##M
#num_telf
1002
##1002
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
###!
#d destroy
###!
###!--------------------------------------------------
###2.5.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
M MARIA 
##M MARIA 
#comencen "Z"

##
#comencen "M"
M MARIA 
##M MARIA 
#comencen "MZ"

##
#comencen "MA"
MARIA 
##MARIA 
#comencen "MARIZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARIAZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!----------------------------------------
###2.5.2       1001 < 1002
###!----------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 M
#registra 1001
#registra 1002
#registra 1002
###!
###!--------------------------------------------------
###2.5.2.1                                 recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###2.5.2.1                                 recorreguts
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.5.2.1.1      baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
M
##M
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent R
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.5.2.1.2    baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
M
##M
#seguent Z

##
#anterior
M
##M
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent ""

##
#anterior
M
##M
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
M
##M
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
M
##M
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#seguent A

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
M
##M
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!--------------------------------------------------
###2.5.2.1.3              recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###2.5.2.1.3.1     seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
M
##M
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
M
##M
#num_telf
1002
##1002
###!
###!--------------------------------------------------
###2.5.1.1.3.2     seguint ordre lexic. invers de noms
###!--------------------------------------------------
###!
#inici
M
##M
#num_telf
1002
##1002
#seguent M
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
M
##M
###!
#d destroy
###!
###!--------------------------------------------------
###2.5.1.2  altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
M MARIA 
##M MARIA 
#comencen "Z"

##
#comencen "M"
M MARIA 
##M MARIA 
#comencen "MZ"

##
#comencen "MA"
MARIA 
##MARIA 
#comencen "MARIZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARIAZ"

##
###!
#longitud_mitj
0.333333
##0.333333
###!
#d destroy
###!
#rc destroy
###!
###!
###!
###!----------------------------
###3 easy_dial AMB TRES TELEFONS
###!----------------------------
###!
###3.1   Exemple que comprova que no se ha d'introduir
###!     el caracter phone::ENDPREF quan ja veiem el 
###!     nom del telefon que volem a la pantalla.
###!     Aixo es aixi fins i tot si el nom coincideix
###!     amb el prefixe en curs.
###!        En aquest exemple:    1000 > 1001 > 1002
###!     Comprova tambe que es pot destruir el call_
###!     registry just despres de crear el easy_dial
###!--------------------------------------------------
###!
#init rc call_registry
###!
#assigna_nom 1000 ALEX
#assigna_nom 1001 K
#assigna_nom 1002 K2
#registra 1000
#registra 1000
#registra 1000
#registra 1001
#registra 1001
#registra 1002
###!
#init d easy_dial rc
###!                      destruccio del call_registry
#rc destroy
###!
#inici
ALEX
##ALEX
#seguent K
K
##K
#num_telf
1001
##1001
###!           si afegim ENDPREF ens treu el telefon K
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#anterior
K
##K
#seguent 2
K2
##K2
#num_telf
1002
##1002
###!          si afegim ENDPREF ens treu el telefon K2
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#d destroy
###!
###!
###!
###!-------------------------------------
###5 easy_dial AMB CINC TELEFONS
###! Exemple de l'enunciat de la practica
###!-------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 JOSEP
#assigna_nom 1003 MAR
#assigna_nom 1004 MIQUEL
#assigna_nom 1005 MARTA
#registra 1001
#registra 1001
#registra 1001
#registra 1002
#registra 1002
#registra 1002
#registra 1002
#registra 1002
#registra 1003
#registra 1004
#registra 1004
#registra 1004
#registra 1004
#registra 1005
#registra 1005
###!
###!
###!--------------------------------------------------
###5.1                                     recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###5.1.1          baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent O
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent I

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Q
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent I
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent T

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent I

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent T

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!
###!--------------------------------------------------
###5.1.2        baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent Z

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent ""

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent Z

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent ""

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent I

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent M

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent M

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent Z

##
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent Z

##
#anterior
MAR
##MAR
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent ""

##
#anterior
MAR
##MAR
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent I

##
#anterior
MAR
##MAR
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent M

##
#anterior
MAR
##MAR
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent I

##
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent T

##
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!
###!--------------------------------------------------
###5.1.3                  recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###5.1.3.1         seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
###!
###!--------------------------------------------------
###5.1.3.2  seguint ordre lexicographic invers de noms
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
###!
###!--------------------------------------------------
###5.1.3.3         seguint ordre del numero de telefon
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#anterior
JOSEP
##JOSEP
###!
###!
###!--------------------------------------------------
###5.2      altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
JOSEP MAR MARIA MARTA MIQUEL 
##JOSEP MAR MARIA MARTA MIQUEL 
#comencen "Z"

##
#comencen "J"
JOSEP 
##JOSEP 
#comencen "JZ"

##
#comencen "JO"
JOSEP 
##JOSEP 
#comencen "JOZ"

##
#comencen "JOS"
JOSEP 
##JOSEP 
#comencen "JOSEZ"

##
#comencen "JOSEP"
JOSEP 
##JOSEP 
#comencen "JOSEPZ"

##
#comencen "M"
MAR MARIA MARTA MIQUEL 
##MAR MARIA MARTA MIQUEL 
#comencen "MZ"

##
#comencen "MI"
MIQUEL 
##MIQUEL 
#comencen "MIQZ"

##
#comencen "MIQU"
MIQUEL 
##MIQUEL 
#comencen "MIQUEZ"

##
#comencen "MIQUEL"
MIQUEL 
##MIQUEL 
#comencen "MIQUELZ"

##
#comencen "MA"
MAR MARIA MARTA 
##MAR MARIA MARTA 
#comencen "MAZ"

##
#comencen "MAR"
MAR MARIA MARTA 
##MAR MARIA MARTA 
#comencen "MARZ"

##
#comencen "MARI"
MARIA 
##MARIA 
#comencen "MART"
MARTA 
##MARTA 
#comencen "MARIZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARTZ"

##
#comencen "MARTA"
MARTA 
##MARTA 
#comencen "MARIAZ"

##
#comencen "MARTAZ"

##
###!
#longitud_mitj
1.33333
##1.33333
###!
###!
#d destroy
###!
#rc destroy
###!
###!
###!  
###!--------------------------------------
###10 easy_dial AMB DEU TELEFONS
###!  Exemple de l'enunciat de la practica
###!  mes cinc nous telefons
###!--------------------------------------
###!
#init rc call_registry
#assigna_nom 1001 MARIA
#assigna_nom 1002 JOSEP
#assigna_nom 1003 MAR
#assigna_nom 1004 MIQUEL
#assigna_nom 1005 MARTA
#assigna_nom 1006 JO
#assigna_nom 1007 JOVANNA
#assigna_nom 1008 JESUS
#assigna_nom 1009 JACINT
#assigna_nom 1010 JESULIN
#registra 1001
#registra 1001
#registra 1001
#registra 1002
#registra 1002
#registra 1002
#registra 1002
#registra 1002
#registra 1003
#registra 1004
#registra 1004
#registra 1004
#registra 1004
#registra 1005
#registra 1005
#registra 1006
#registra 1006
#registra 1006
#registra 1006
#registra 1007
#registra 1007
#registra 1007
#registra 1008
#registra 1008
#registra 1009
#registra 1010
###!
###!
###!--------------------------------------------------
###10.1                                    recorreguts
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
###!--------------------------------------------------
###10.1.1         baixant fins mes enlla de les fulles
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent I

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Q
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent I
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent T

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#seguent M

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent I

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#seguent T

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent J

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent O
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent O
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent O
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent O
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#seguent A

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent N
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent O
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#seguent J

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent O
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent J

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent E
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent S
JESULIN
##JESULIN
#num_telf
1010
##1010
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent S
JESULIN
##JESULIN
#num_telf
1010
##1010
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent S
JESULIN
##JESULIN
#num_telf
1010
##1010
#seguent U

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent L
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent S
JESULIN
##JESULIN
#num_telf
1010
##1010
#seguent J

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent E
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent A
JACINT
##JACINT
#num_telf
1009
##1009
#seguent Z

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent Z
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent A
JACINT
##JACINT
#num_telf
1009
##1009
#seguent ""

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent ""
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent A
JACINT
##JACINT
#num_telf
1009
##1009
#seguent C

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent I
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent A
JACINT
##JACINT
#num_telf
1009
##1009
#seguent J

##
#num_telf
Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
##Error::easy_dial:32:No hi ha telefons amb el prefix en curs.
#seguent A
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!
###!--------------------------------------------------
###10.1.2       baixant i tornant enrera fins la arrel
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#anterior
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent Z

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent ""

##
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent Z

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent ""

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent I

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent M

##
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent Z

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent ""

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent M

##
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent Z

##
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent Z

##
#anterior
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent ""

##
#anterior
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent I

##
#anterior
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#seguent M

##
#anterior
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent I

##
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent T

##
#anterior
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent Z

##
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent O
JOVANNA
##JOVANNA
#seguent Z

##
#anterior
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent O
JOVANNA
##JOVANNA
#seguent A

##
#anterior
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent O
JOVANNA
##JOVANNA
#seguent J

##
#anterior
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent E
JESUS
##JESUS
#seguent Z

##
#anterior
JESUS
##JESUS
#num_telf
1008
##1008
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent E
JESUS
##JESUS
#seguent J

##
#anterior
JESUS
##JESUS
#num_telf
1008
##1008
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent E
JESUS
##JESUS
#seguent S
JESULIN
##JESULIN
#seguent Z

##
#anterior
JESULIN
##JESULIN
#num_telf
1010
##1010
#anterior
JESUS
##JESUS
#num_telf
1008
##1008
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent E
JESUS
##JESUS
#seguent S
JESULIN
##JESULIN
#seguent U

##
#anterior
JESULIN
##JESULIN
#num_telf
1010
##1010
#anterior
JESUS
##JESUS
#num_telf
1008
##1008
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent E
JESUS
##JESUS
#seguent S
JESULIN
##JESULIN
#seguent J

##
#anterior
JESULIN
##JESULIN
#num_telf
1010
##1010
#anterior
JESUS
##JESUS
#num_telf
1008
##1008
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent J

##
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent A
JACINT
##JACINT
#seguent Z

##
#anterior
JACINT
##JACINT
#num_telf
1009
##1009
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent A
JACINT
##JACINT
#seguent C

##
#anterior
JACINT
##JACINT
#num_telf
1009
##1009
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent A
JACINT
##JACINT
#seguent J

##
#anterior
JACINT
##JACINT
#num_telf
1009
##1009
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#anterior
Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
##Error::easy_dial:33:No es pot eliminar caracter en el prefix en curs.
#num_telf
Error::easy_dial:31:Prefix en curs indefinit.
##Error::easy_dial:31:Prefix en curs indefinit.
###!
###!
###!--------------------------------------------------
###10.1.3                 recorregut de tots els nodes
###!--------------------------------------------------
###!
###!--------------------------------------------------
###10.1.3.1        seguint ordre lexicographic de noms
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent A
JACINT
##JACINT
#num_telf
1009
##1009
#anterior
JO
##JO
#seguent E
JESUS
##JESUS
#seguent S
JESULIN
##JESULIN
#num_telf
1010
##1010
#anterior
JESUS
##JESUS
#num_telf
1008
##1008
#anterior
JO
##JO
#num_telf
1006
##1006
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#seguent O
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#anterior
JO
##JO
#anterior
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#anterior
JOSEP
##JOSEP
###!
###!--------------------------------------------------
###10.1.3.2 seguint ordre lexicographic invers de noms
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#num_telf
1001
##1001
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#anterior
JOSEP
##JOSEP
#seguent J
JO
##JO
#seguent O
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#anterior
JO
##JO
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#seguent S
JESULIN
##JESULIN
#num_telf
1010
##1010
#anterior
JESUS
##JESUS
#anterior
JO
##JO
#seguent A
JACINT
##JACINT
#num_telf
1009
##1009
#anterior
JO
##JO
#anterior
JOSEP
##JOSEP
###!
###!--------------------------------------------------
###10.1.3.3        seguint ordre del numero de telefon
###!--------------------------------------------------
###!
#inici
JOSEP
##JOSEP
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#num_telf
1001
##1001
#anterior
MIQUEL
##MIQUEL
#anterior
JOSEP
##JOSEP
#num_telf
1002
##1002
#seguent M
MIQUEL
##MIQUEL
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#seguent ""
MAR
##MAR
#num_telf
1003
##1003
#anterior
MARTA
##MARTA
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#num_telf
1004
##1004
#seguent A
MARIA
##MARIA
#seguent R
MARTA
##MARTA
#num_telf
1005
##1005
#anterior
MARIA
##MARIA
#anterior
MIQUEL
##MIQUEL
#anterior
JOSEP
##JOSEP
#seguent J
JO
##JO
#num_telf
1006
##1006
#seguent O
JOVANNA
##JOVANNA
#num_telf
1007
##1007
#anterior
JO
##JO
#seguent E
JESUS
##JESUS
#num_telf
1008
##1008
#anterior
JO
##JO
#seguent A
JACINT
##JACINT
#num_telf
1009
##1009
#anterior
JO
##JO
#seguent E
JESUS
##JESUS
#seguent S
JESULIN
##JESULIN
#num_telf
1010
##1010
#anterior
JESUS
##JESUS
#anterior
JO
##JO
#anterior
JOSEP
##JOSEP
###!
###!
###!--------------------------------------------------
###10.2     altres metodes: comencen + longitud_mitj
###!--------------------------------------------------
###!
#init d easy_dial rc
###!
#comencen ""
JACINT JESULIN JESUS JO JOSEP JOVANNA MAR MARIA MARTA MIQUEL 
##JACINT JESULIN JESUS JO JOSEP JOVANNA MAR MARIA MARTA MIQUEL 
#comencen "Z"

##
#comencen "J"
JACINT JESULIN JESUS JO JOSEP JOVANNA 
##JACINT JESULIN JESUS JO JOSEP JOVANNA 
#comencen "JZ"

##
#comencen "JA"
JACINT 
##JACINT 
#comencen "JAZ"

##
#comencen "JAC"
JACINT 
##JACINT 
#comencen "JACINZ"

##
#comencen "JACINT"
JACINT 
##JACINT 
#comencen "JACINTZ"

##
#comencen "JE"
JESULIN JESUS 
##JESULIN JESUS 
#comencen "JESU"
JESULIN JESUS 
##JESULIN JESUS 
#comencen "JESUZ"

##
#comencen "JESUS"
JESUS 
##JESUS 
#comencen "JESUSZ"

##
#comencen "JESUL"
JESULIN 
##JESULIN 
#comencen "JESULIZ"

##
#comencen "JESULIN"
JESULIN 
##JESULIN 
#comencen "JESULINZ"

##
#comencen "JO"
JO JOSEP JOVANNA 
##JO JOSEP JOVANNA 
#comencen "JOZ"

##
#comencen "JOS"
JOSEP 
##JOSEP 
#comencen "JOSEZ"

##
#comencen "JOSEP"
JOSEP 
##JOSEP 
#comencen "JOSEPZ"

##
#comencen "JOV"
JOVANNA 
##JOVANNA 
#comencen "JOVANNZ"

##
#comencen "JOVANNA"
JOVANNA 
##JOVANNA 
#comencen "JOVANNAZ"

##
#comencen "M"
MAR MARIA MARTA MIQUEL 
##MAR MARIA MARTA MIQUEL 
#comencen "MZ"

##
#comencen "MI"
MIQUEL 
##MIQUEL 
#comencen "MIQZ"

##
#comencen "MIQU"
MIQUEL 
##MIQUEL 
#comencen "MIQUEZ"

##
#comencen "MIQUEL"
MIQUEL 
##MIQUEL 
#comencen "MIQUELZ"

##
#comencen "MA"
MAR MARIA MARTA 
##MAR MARIA MARTA 
#comencen "MAZ"

##
#comencen "MAR"
MAR MARIA MARTA 
##MAR MARIA MARTA 
#comencen "MARZ"

##
#comencen "MARI"
MARIA 
##MARIA 
#comencen "MART"
MARTA 
##MARTA 
#comencen "MARIZ"

##
#comencen "MARIA"
MARIA 
##MARIA 
#comencen "MARTZ"

##
#comencen "MARTA"
MARTA 
##MARTA 
#comencen "MARIAZ"

##
#comencen "MARTAZ"

##
###!
#longitud_mitj
1.5
##1.5
###!
###!
#d destroy
###!
#rc destroy
###!
###!
