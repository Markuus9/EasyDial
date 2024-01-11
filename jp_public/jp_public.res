###!===========================================================
###! JOC DE PROVES PUBLIC
###!===========================================================
###!
###!
###!-----------------------------------------------------------
###! JOC DE PROVES DE PHONE
###!-----------------------------------------------------------
###!
#load jp_public_phone.in
###!----------------------------------------------
###!                                              
###! CLASSE PHONE
###!
###!----------------------------------------------
###1 ErrNombreIncorrecto
###!----------------------------------------------
###!
#init tel1 phone  38501585 "deletechar<" 33
Error::phone:11:Nom incorrecte.
##Error::phone:11:Nom incorrecte.
#init tel1 phone  38501585 "endchar|" 33
Error::phone:11:Nom incorrecte.
##Error::phone:11:Nom incorrecte.
#init tel1 phone  38501585 "delete<char" 33
Error::phone:11:Nom incorrecte.
##Error::phone:11:Nom incorrecte.
#init tel1 phone  38501585 "end|char" 33
Error::phone:11:Nom incorrecte.
##Error::phone:11:Nom incorrecte.
#init tel1 phone  38501585 "<deletechar" 33
Error::phone:11:Nom incorrecte.
##Error::phone:11:Nom incorrecte.
#init tel1 phone  38501585 "|endchar" 33
Error::phone:11:Nom incorrecte.
##Error::phone:11:Nom incorrecte.
###!
###!
###!
###!----------------------------------------------
###2 Constructor i consultores
###!----------------------------------------------
###!
#init t1 phone
#nom

##
#numero
0
##0
#frequencia
0
##0
#init t2 phone 00 " "
#nom
 
## 
#numero
0
##0
#frequencia
0
##0
#init tel2 phone 77
#numero
77
##77
#nom

##
#frequencia
0
##0
#init tel3 phone 456 "construye" 
#numero
456
##456
#nom
construye
##construye
#frequencia
0
##0
#init tel4 phone 654 "construir" 45
#numero
654
##654
#nom
construir
##construir
#frequencia
45
##45
###!
###!
###!
###!----------------------------------------------
###3 Constructor per copia i consultores
###!----------------------------------------------
###!
#init tel5 phone 77
#initcopy tel8 = tel5
#tel8 nom

##
#tel8 numero
77
##77
#frequencia
0
##0
#init tel9 phone 456 "construye"
#initcopy tel10 = tel9 
#tel10 numero
456
##456
#tel10 nom
construye
##construye
#tel10 frequencia
0
##0
#init tel11 phone 654 "construir" 45
#initcopy tel12 = tel11
#tel12 numero
654
##654
#tel12 nom
construir
##construir
#tel12 frequencia 
45
##45
###!
###!
###!
###!----------------------------------------------
###4 Assignacio i consultores
###!----------------------------------------------
###!
#init tel20 phone 456 "construye"
#init tel22 phone 77
#tel20 = tel22
#tel20 nom

##
#tel20 numero
77
##77
#tel20 frequencia
0
##0
#init tel24 phone 488 "const"
#init tel26 phone 456 "construye"
#tel24 = tel26 
#tel24 numero
456
##456
#tel24 nom
construye
##construye
#tel24 frequencia
0
##0
#init tel26 phone 77
#init tel28 phone 654 "construir" 45
#tel26 = tel28
#tel26 numero
654
##654
#tel26 nom
construir
##construir
#tel26 frequencia 
45
##45
###!
###!
###!
###!----------------------------------------------
###5 Operador ++ i post_incr
###!----------------------------------------------
###!
#init tel40 phone 456 "nom1" 40
#tel40 ++ 
456 nom1 41
##456 nom1 41
#frequencia 
41
##41
#tel40 ++
456 nom1 42
##456 nom1 42
#frequencia 
42
##42
#tel40 ++
456 nom1 43
##456 nom1 43
#frequencia 
43
##43
###!
#init tel140 phone 456 "nom1" 140
#frequencia 
140
##140
#tel140 post_incr 
456 nom1 140
##456 nom1 140
#frequencia
141
##141
#tel140 post_incr
456 nom1 141
##456 nom1 141
#frequencia 
142
##142
#tel140 post_incr
456 nom1 142
##456 nom1 142
#frequencia 
143
##143
###!
###!
###!
###!----------------------------------------------
###6 Operador >, <, ==, !=, >= i <=
###!----------------------------------------------
###!
#init tel45 phone 345 "nom45" 30
#init tel50 phone 890 "nom50" 20
#tel45 > tel50
true
##true
#tel50 > tel45
false
##false
#init tel45 phone 345 "nom" 30
#init tel50 phone 890 "nombre" 30
#tel45 > tel50
false
##false
#tel50 > tel45
true
##true
#init tel45 phone 345 "nombre" 30
#init tel50 phone 890 "nombre" 30
#tel45 > tel50
false
##false
#tel50 > tel45
false
##false
###!
###!
###!
#init tel45 phone 345 "nom45" 30
#init tel50 phone 890 "nom50" 20
#tel45 < tel50
false
##false
#tel50 < tel45
true
##true
#init tel45 phone 345 "nom" 30
#init tel50 phone 890 "nombre" 30
#tel45 < tel50
true
##true
#tel50 < tel45
false
##false
#init tel45 phone 345 "nombre" 30
#init tel50 phone 890 "nombre" 30
#tel45 < tel50
false
##false
#tel50 < tel45
false
##false
###!
###!
###!
#init tel45 phone 345 "nom45" 30
#init tel50 phone 890 "nom50" 20
#tel45 == tel50
false
##false
#tel50 == tel45
false
##false
#init tel45 phone 345 "nom" 30
#init tel50 phone 890 "nombre" 30
#tel45 == tel50
false
##false
#tel50 == tel45
false
##false
#init tel45 phone 345 "nombre" 30
#init tel50 phone 890 "nombre" 30
#tel45 == tel50
true
##true
#tel50 == tel45
true
##true
###!
###!
###!
#init tel45 phone 345 "nom45" 30
#init tel50 phone 890 "nom50" 20
#tel45 >= tel50
true
##true
#tel50 >= tel45
false
##false
#init tel45 phone 345 "nom" 30
#init tel50 phone 890 "nombre" 30
#tel45 >= tel50
false
##false
#tel50 >= tel45
true
##true
#init tel45 phone 345 "nombre" 30
#init tel50 phone 890 "nombre" 30
#tel45 >= tel50
true
##true
#tel50 >= tel45
true
##true
###!
###!
###!
#init tel45 phone 345 "nom45" 30
#init tel50 phone 890 "nom50" 20
#tel45 <= tel50
false
##false
#tel50 <= tel45
true
##true
#init tel45 phone 345 "nom" 30
#init tel50 phone 890 "nombre" 30
#tel45 <= tel50
true
##true
#tel50 <= tel45
false
##false
#init tel45 phone 345 "nombre" 30
#init tel50 phone 890 "nombre" 30
#tel45 <= tel50
true
##true
#tel50 <= tel45
true
##true
###!
###!
###!
###!
###!-----------------------------------------------------------
###! JOC DE PROVES DE CALL_REGISTRY
###!-----------------------------------------------------------
###!
#load jp_public_call_registry.in
###!-----------------------------------------
###!
###! MODUL CALL_REGISTRY
###!
###!-----------------------------------------
###1 call_registry: buit
###!-----------------------------------------
###!
#init c1 call_registry
#c 101
false
##false
#nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
0
##0
#es_buit
true
##true
#dump

##
#destroy
###!
###!
###!
###!-----------------------------------------
###2 call_registry: una entrada
###!-----------------------------------------
###!
###!-----------------------------------------
###2.1 insercio assignant
###!-----------------------------------------
#init c21 call_registry
#as 102 "I-102"
###!
#c 101
false
##false
#nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c 102
true
##true
#nom_cr 102
I-102
##I-102
#num_trucades 102
0
##0
#num_entrades
1
##1
#es_buit
false
##false
#dump
102 I-102 0 
##102 I-102 0 
#e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#e 102
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
0
##0
#es_buit
true
##true
#dump

##
#destroy
###!
###!
###!-----------------------------------------
###2.2 insercio assignant i registrant
###!-----------------------------------------
###!
#init c22 call_registry
#as 102 "I-102"
#r 102
###!
#c 102
true
##true
#nom_cr 102
I-102
##I-102
#num_trucades 102
1
##1
#dump
102 I-102 1 
##102 I-102 1 
###!
#as 102 "I-102Bis"
#c 102
true
##true
#nom_cr 102
I-102Bis
##I-102Bis
#num_trucades 102
1
##1
#dump
102 I-102Bis 1 
##102 I-102Bis 1 
#num_entrades
1
##1
#es_buit
false
##false
###!
#e 102
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
0
##0
#es_buit
true
##true
#dump

##
#destroy
###!
###!
###!-----------------------------------------
###2.3 insercio registrant
###!-----------------------------------------
###!
#init c23 call_registry
#r 102
###!
#c 101
false
##false
#nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c 102
true
##true
#nom_cr 102

##
#num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 102
1
##1
#num_entrades
1
##1
#es_buit
false
##false
#dump

##
#e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#e 102
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
0
##0
#es_buit
true
##true
#dump

##
#destroy
###!
###!
###!-----------------------------------------
###2.4 insercio registrant i assignant
###!-----------------------------------------
###!
#init c24 call_registry
#r 102
#as 102 "I-102"
###!
#c 102
true
##true
#nom_cr 102
I-102
##I-102
#num_trucades 102
1
##1
#dump
102 I-102 1 
##102 I-102 1 
###!
#as 102 "I-102Bis"
#c 102
true
##true
#nom_cr 102
I-102Bis
##I-102Bis
#num_trucades 102
1
##1
#dump
102 I-102Bis 1 
##102 I-102Bis 1 
#num_entrades
1
##1
#es_buit
false
##false
###!
#e 102
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
0
##0
#es_buit
true
##true
#dump

##
#destroy
###!
###!
###!
###!-----------------------------------------
###3 call_registry: dues entrada
###!-----------------------------------------
###!
###!-----------------------------------------
###3.1 insercio assignant
###!-----------------------------------------
###!
#init c31 call_registry
#as 101 "I-101"
#as 103 "I-103"
#c 100
false
##false
#c 101
true
##true
#c 102
false
##false
#c 103
true
##true
#c 104
false
##false
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101
I-101
##I-101
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 103
I-103
##I-103
#nom_cr 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
0
##0
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 103
0
##0
#num_trucades 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101 0 103 I-103 0 
##101 I-101 0 103 I-103 0 
###!
#r 101
#c 101
true
##true
#nom_cr 101
I-101
##I-101
#num_trucades 101
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump
103 I-103 0 101 I-101 1 
##103 I-103 0 101 I-101 1 
###!
#r 103
#c 103
true
##true
#nom_cr 103
I-103
##I-103
#num_trucades 103
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101 1 103 I-103 1 
##101 I-101 1 103 I-103 1 
###!
#as 101 "I-101Bis"
#c 101
true
##true
#nom_cr 101
I-101Bis
##I-101Bis
#num_trucades 101
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101Bis 1 103 I-103 1 
##101 I-101Bis 1 103 I-103 1 
###!
#as 103 "I-103Bis"
#c 103
true
##true
#nom_cr 103
I-103Bis
##I-103Bis
#num_trucades 103
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101Bis 1 103 I-103Bis 1 
##101 I-101Bis 1 103 I-103Bis 1 
#destroy
###!
###!
###!-----------------------------------------
###3.2 insercio assignant+registrant
###!-----------------------------------------
###!
#init c32 call_registry
#as 101 "I-101"
#r 103
#c 100
false
##false
#c 101
true
##true
#c 102
false
##false
#c 103
true
##true
#c 104
false
##false
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101
I-101
##I-101
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 103

##
#nom_cr 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
0
##0
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 103
1
##1
#num_trucades 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101 0 
##101 I-101 0 
###!
#r 103
#c 103
true
##true
#nom_cr 103

##
#num_trucades 103
2
##2
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101 0 
##101 I-101 0 
###!
#as 103 "I-103"
#c 103
true
##true
#nom_cr 103
I-103
##I-103
#num_trucades 103
2
##2
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101 0 103 I-103 2 
##101 I-101 0 103 I-103 2 
#destroy
###!
###!
###!-----------------------------------------
###3.3 insercio registrant
###!-----------------------------------------
###!
#init c33 call_registry
#r 101
#r 103
#c 100
false
##false
#c 101
true
##true
#c 102
false
##false
#c 103
true
##true
#c 104
false
##false
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101

##
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 103

##
#nom_cr 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
1
##1
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 103
1
##1
#num_trucades 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
2
##2
#es_buit
false
##false
#dump

##
#r 101
#c 101
true
##true
#nom_cr 101

##
#num_trucades 101
2
##2
#num_entrades
2
##2
#es_buit
false
##false
#dump

##
#r 103
#c 103
true
##true
#nom_cr 103

##
#num_trucades 103
2
##2
#num_entrades
2
##2
#es_buit
false
##false
#dump

##
#as 101 "I-101"
#as 103 "I-103"
#dump
101 I-101 2 103 I-103 2 
##101 I-101 2 103 I-103 2 
#destroy
###!
###!
###!-----------------------------------------
###3.4 insercio registrant+assignant
###!-----------------------------------------
###!
#init c34 call_registry
#r 101
#as 103 "I-103"
#c 100
false
##false
#c 101
true
##true
#c 102
false
##false
#c 103
true
##true
#c 104
false
##false
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101

##
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 103
I-103
##I-103
#nom_cr 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
1
##1
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 103
0
##0
#num_trucades 104
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
2
##2
#es_buit
false
##false
#dump
103 I-103 0 
##103 I-103 0 
###!
#r 103
#c 103
true
##true
#nom_cr 103
I-103
##I-103
#num_trucades 103
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump
103 I-103 1 
##103 I-103 1 
###!
#r 101
#as 101 "I-103"
#c 101
true
##true
#nom_cr 101
I-103
##I-103
#num_trucades 101
2
##2
#num_entrades
2
##2
#es_buit
false
##false
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#destroy
###!
###!
###!-----------------------------------------
###3.5 eliminar al principi
###!-----------------------------------------
###!
#init c35 call_registry
#r 101
#as 103 "I-103"
#dump
103 I-103 0 
##103 I-103 0 
#e 101
#c 101
false
##false
#e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c 103
true
##true
#nom_cr 103
I-103
##I-103
#num_trucades 103
0
##0
#num_entrades
1
##1
#es_buit
false
##false
#dump
103 I-103 0 
##103 I-103 0 
#destroy
###!
###!
###!-----------------------------------------
###3.6 eliminar al final
###!-----------------------------------------
###!
#init c36 call_registry
#r 101
#as 103 "I-103"
#e 103
#c 100
false
##false
#e 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c 103
false
##false
#nom_cr 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c 101
true
##true
#nom_cr 101

##
#num_trucades 101
1
##1
#num_entrades
1
##1
#es_buit
false
##false
#dump

##
#destroy
###!
###!
###!-----------------------------------------
###3.7 eliminar+registrar principi
###!-----------------------------------------
###!
#init c37 call_registry
#as 101 "I-101"
#as 103 "I-103"
#dump
101 I-101 0 103 I-103 0 
##101 I-101 0 103 I-103 0 
#e 101
#dump
103 I-103 0 
##103 I-103 0 
#r 101
#c 103
true
##true
#nom_cr 103
I-103
##I-103
#num_trucades 103
0
##0
#c 101
true
##true
#nom_cr 101

##
#num_trucades 101
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump
103 I-103 0 
##103 I-103 0 
###!
#as 101 "I-101Bis"
#dump
103 I-103 0 101 I-101Bis 1 
##103 I-103 0 101 I-101Bis 1 
#destroy
###!
###!
###!-----------------------------------------
###3.8 eliminar+registrar final
###!-----------------------------------------
###!
#init c38 call_registry
#r 101
#as 103 "I-103"
#e 103
#dump

##
#r 103
#c 103
true
##true
#nom_cr 103

##
#num_trucades 103
1
##1
#c 101
true
##true
#nom_cr 101

##
#num_trucades 101
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump

##
#destroy
###!
###!
###!
###!-----------------------------------------
###4 call_registry: tres entrada
###!-----------------------------------------
###!
###!-----------------------------------------
###4.1 insercio as+as+as
###!-----------------------------------------
###!
#init c41 call_registry
#as 103 "I-103"
#as 101 "I-101"
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
101 I-101 0 103 I-103 0 
##101 I-101 0 103 I-103 0 
###!
#as 102 "I-102"
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101
I-101
##I-101
#nom_cr 102
I-102
##I-102
#nom_cr 103
I-103
##I-103
#num_trucades 101
0
##0
#num_trucades 102
0
##0
#num_trucades 103
0
##0
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 102 I-102 0 103 I-103 0 
##101 I-101 0 102 I-102 0 103 I-103 0 
###!
#r 102
#c 102
true
##true
#nom_cr 102
I-102
##I-102
#num_trucades 102
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 103 I-103 0 102 I-102 1 
##101 I-101 0 103 I-103 0 102 I-102 1 
###!
#as 102 "I-102Bis"
#c 102
true
##true
#nom_cr 102
I-102Bis
##I-102Bis
#num_trucades 102
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 103 I-103 0 102 I-102Bis 1 
##101 I-101 0 103 I-103 0 102 I-102Bis 1 
#destroy
###!
###!
###!-----------------------------------------
###.4.2 insercio as+as+r
###!-----------------------------------------
###!
#init c42 call_registry
#as 103 "I-103"
#as 101 "I-101"
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
101 I-101 0 103 I-103 0 
##101 I-101 0 103 I-103 0 
###!
#r 102
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101
I-101
##I-101
#nom_cr 102

##
#nom_cr 103
I-103
##I-103
#num_trucades 101
0
##0
#num_trucades 102
1
##1
#num_trucades 103
0
##0
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 103 I-103 0 
##101 I-101 0 103 I-103 0 
###!
#r 102
#c 102
true
##true
#nom_cr 102

##
#num_trucades 102
2
##2
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 103 I-103 0 
##101 I-101 0 103 I-103 0 
###!
#as 102 "I-102Bis"
#c 102
true
##true
#nom_cr 102
I-102Bis
##I-102Bis
#num_trucades 102
2
##2
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 103 I-103 0 102 I-102Bis 2 
##101 I-101 0 103 I-103 0 102 I-102Bis 2 
#destroy
###!
###!
###!-----------------------------------------
###.4.3 insercio as+r+as
###!-----------------------------------------
###!
#init c43 call_registry
#as 103 "I-103"
#r 101
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
103 I-103 0 
##103 I-103 0 
###!
#as 102 "I-102"
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101

##
#nom_cr 102
I-102
##I-102
#nom_cr 103
I-103
##I-103
#num_trucades 101
1
##1
#num_trucades 102
0
##0
#num_trucades 103
0
##0
#num_entrades
3
##3
#es_buit
false
##false
#dump
102 I-102 0 103 I-103 0 
##102 I-102 0 103 I-103 0 
###!
#as 102 "I-102Bis"
#c 102
true
##true
#nom_cr 102
I-102Bis
##I-102Bis
#num_trucades 102
0
##0
#num_entrades
3
##3
#es_buit
false
##false
#dump
102 I-102Bis 0 103 I-103 0 
##102 I-102Bis 0 103 I-103 0 
###!
#r 102
#c 102
true
##true
#nom_cr 102
I-102Bis
##I-102Bis
#num_trucades 102
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump
103 I-103 0 102 I-102Bis 1 
##103 I-103 0 102 I-102Bis 1 
#as 102 "I-103"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#destroy
###!
###!
###!-----------------------------------------
###.4.4 insercio as+r+r
###!-----------------------------------------
###!
#init c44 call_registry
#as 103 "I-103"
#r 101
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
103 I-103 0 
##103 I-103 0 
###!
#r 102
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101

##
#nom_cr 102

##
#nom_cr 103
I-103
##I-103
#num_trucades 101
1
##1
#num_trucades 102
1
##1
#num_trucades 103
0
##0
#num_entrades
3
##3
#es_buit
false
##false
#dump
103 I-103 0 
##103 I-103 0 
###!
#as 102 "I-102"
#c 102
true
##true
#nom_cr 102
I-102
##I-102
#num_trucades 102
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump
103 I-103 0 102 I-102 1 
##103 I-103 0 102 I-102 1 
###!
#r 102
#c 102
true
##true
#nom_cr 102
I-102
##I-102
#num_trucades 102
2
##2
#num_entrades
3
##3
#es_buit
false
##false
#dump
103 I-103 0 102 I-102 2 
##103 I-103 0 102 I-102 2 
#as 101 "I-102"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#destroy
###!
###!
###!-----------------------------------------
###.4.5 insercio r+as+as
###!-----------------------------------------
###!
#init c45 call_registry
#r 103
#as 101 "I-101"
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
101 I-101 0 
##101 I-101 0 
###!
#as 102 "I-102"
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101
I-101
##I-101
#nom_cr 102
I-102
##I-102
#nom_cr 103

##
#num_trucades 101
0
##0
#num_trucades 102
0
##0
#num_trucades 103
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 102 I-102 0 
##101 I-101 0 102 I-102 0 
#destroy
###!
###!
###!-----------------------------------------
###.4.6 insercio r+as+r
###!-----------------------------------------
###!
#init c46 call_registry
#r 103
#as 101 "I-101"
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
101 I-101 0 
##101 I-101 0 
###!
#r 102
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101
I-101
##I-101
#nom_cr 102

##
#nom_cr 103

##
#num_trucades 101
0
##0
#num_trucades 102
1
##1
#num_trucades 103
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump
101 I-101 0 
##101 I-101 0 
#destroy
###!
###!
###!-----------------------------------------
###.4.7 insercio r+r+as
###!-----------------------------------------
###!
#init c47 call_registry
#r 103
#r 101
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump

##
#as 102 "I-102"
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101

##
#nom_cr 102
I-102
##I-102
#nom_cr 103

##
#num_trucades 101
1
##1
#num_trucades 102
0
##0
#num_trucades 103
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump
102 I-102 0 
##102 I-102 0 
#destroy
###!
###!
###!-----------------------------------------
###.4.8 insercio r+r+r
###!-----------------------------------------
###!
#init c48 call_registry
#r 103
#r 101
#c 102
false
##false
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump

##
#r 102
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#nom_cr 101

##
#nom_cr 102

##
#nom_cr 103

##
#num_trucades 101
1
##1
#num_trucades 102
1
##1
#num_trucades 103
1
##1
#num_entrades
3
##3
#es_buit
false
##false
#dump

##
#destroy
###!
###!
###!-----------------------------------------
###4.9 eliminar as
###!-----------------------------------------
###!
#init c49 call_registry
#r 103
#as 101 "I-101"
#as 102 "I-102"
#e 102
#c 102
false
##false
#e 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c 103
true
##true
#nom_cr 103

##
#num_trucades 103
1
##1
#c 101
true
##true
#nom_cr 101
I-101
##I-101
#num_trucades 101
0
##0
#num_entrades
2
##2
#es_buit
false
##false
#dump
101 I-101 0 
##101 I-101 0 
#destroy
###!
###!
###!-----------------------------------------
###4.10 eliminar as
###!-----------------------------------------
###!
#init c410 call_registry
#as 103 "I-103"
#r 101
#r 102
#e 102
#c 102
false
##false
#e 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 102
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c 103
true
##true
#nom_cr 103
I-103
##I-103
#num_trucades 103
0
##0
#c 101
true
##true
#nom_cr 101

##
#num_trucades 101
1
##1
#num_entrades
2
##2
#es_buit
false
##false
#dump
103 I-103 0 
##103 I-103 0 
#destroy
###!
###!
###!-----------------------------------------
###4.11 eliminar + assignar
###!-----------------------------------------
###!
#init c411 call_registry
#as 103 "I-103"
#r 101
#r 102
#dump
103 I-103 0 
##103 I-103 0 
#e 102
#dump
103 I-103 0 
##103 I-103 0 
###!
#as 102 "I-102"
#c 102
true
##true
#num_trucades 102
0
##0
#nom_cr 102
I-102
##I-102
#dump
102 I-102 0 103 I-103 0 
##102 I-102 0 103 I-103 0 
#destroy
###!
###!
###!
###!-----------------------------------------
###5 Call_Registry: 31 entrades
###!-----------------------------------------
###!
###!-----------------------------------------
###5.1 assigna creixent
###!-----------------------------------------
###!
#init c51 call_registry
#as 101 "I-101"
#as 102 "I-102"
#as 103 "I-103"
#as 104 "I-104"
#as 105 "I-105"
#as 106 "I-106"
#as 107 "I-107"
#as 108 "I-108"
#as 109 "I-109"
#as 110 "I-110"
#as 1111 "I-1111"
#as 1112 "I-1112"
#as 1113 "I-1113"
#as 1114 "I-1114"
#as 1115 "I-1115"
#as 1116 "I-1116"
#as 1118 "I-1118"
#as 1119 "I-1119"
#as 1120 "I-1120"
#as 11121 "I-11121"
#as 11122 "I-11122"
#as 11123 "I-11123"
#as 11124 "I-11124"
#as 11125 "I-11125"
#as 11126 "I-11126"
#as 11127 "I-11127"
#as 11128 "I-11128"
#as 11129 "I-11129"
#as 11130 "I-11130"
#as 11131 "I-11131"
#as 11132 "I-11132"
#c 100
false
##false
#c 111
false
##false
#c 1110
false
##false
#c 1117
false
##false
#c 1121
false
##false
#c 11120
false
##false
#c 11133
false
##false
#c 101
true
##true
#c 11132
true
##true
#c 1116
true
##true
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101
I-101
##I-101
#nom_cr 11132
I-11132
##I-11132
#nom_cr 1116
I-1116
##I-1116
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
0
##0
#num_trucades 11132
0
##0
#num_trucades 1116
0
##0
#num_entrades
31
##31
#es_buit
false
##false
#dump
101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#r 101
#r 11132
#r 1116
#num_trucades 101
1
##1
#num_trucades 11132
1
##1
#num_trucades 1116
1
##1
#num_entrades
31
##31
#es_buit
false
##false
#dump
102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101 1 11132 I-11132 1 1116 I-1116 1 
##102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101 1 11132 I-11132 1 1116 I-1116 1 
#as 101 "I-101Bis"
#as 11132 "I-11132Bis"
#as 1116 "I-1116Bis"
#nom_cr 101
I-101Bis
##I-101Bis
#nom_cr 11132
I-11132Bis
##I-11132Bis
#nom_cr 1116
I-1116Bis
##I-1116Bis
#dump
102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101Bis 1 11132 I-11132Bis 1 1116 I-1116Bis 1 
##102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101Bis 1 11132 I-11132Bis 1 1116 I-1116Bis 1 
#as 11132 "I-101Bis"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#as 11132 "I-11132Bis"
#as 101 "I-11132Bis"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#destroy
###!
###!
###!-----------------------------------------
###5.2 assigna decreixent
###!-----------------------------------------
###!
#init c52 call_registry
#as 11132 "I-11132"
#as 11131 "I-11131"
#as 11130 "I-11130"
#as 11129 "I-11129"
#as 11128 "I-11128"
#as 11127 "I-11127"
#as 11126 "I-11126"
#as 11125 "I-11125"
#as 11124 "I-11124"
#as 11123 "I-11123"
#as 11122 "I-11122"
#as 11121 "I-11121"
#as 1120 "I-1120"
#as 1119 "I-1119"
#as 1118 "I-1118"
#as 1116 "I-1116"
#as 1115 "I-1115"
#as 1114 "I-1114"
#as 1113 "I-1113"
#as 1112 "I-1112"
#as 1111 "I-1111"
#as 110 "I-110"
#as 109 "I-109"
#as 108 "I-108"
#as 107 "I-107"
#as 106 "I-106"
#as 105 "I-105"
#as 104 "I-104"
#as 103 "I-103"
#as 102 "I-102"
#as 101 "I-101"
#c 100
false
##false
#c 111
false
##false
#c 1110
false
##false
#c 1117
false
##false
#c 1121
false
##false
#c 11120
false
##false
#c 11133
false
##false
#c 101
true
##true
#c 11132
true
##true
#c 1116
true
##true
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101
I-101
##I-101
#nom_cr 11132
I-11132
##I-11132
#nom_cr 1116
I-1116
##I-1116
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
0
##0
#num_trucades 11132
0
##0
#num_trucades 1116
0
##0
#num_entrades
31
##31
#es_buit
false
##false
#dump
101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#r 101
#r 11132
#r 1116
#num_trucades 101
1
##1
#num_trucades 11132
1
##1
#num_trucades 1116
1
##1
#dump
102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101 1 11132 I-11132 1 1116 I-1116 1 
##102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101 1 11132 I-11132 1 1116 I-1116 1 
#as 101 "I-101Bis"
#as 11132 "I-11132Bis"
#as 1116 "I-1116Bis"
#nom_cr 101
I-101Bis
##I-101Bis
#nom_cr 11132
I-11132Bis
##I-11132Bis
#nom_cr 1116
I-1116Bis
##I-1116Bis
#dump
102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101Bis 1 11132 I-11132Bis 1 1116 I-1116Bis 1 
##102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101Bis 1 11132 I-11132Bis 1 1116 I-1116Bis 1 
#destroy
###!
###!
###!-----------------------------------------
###5.3 registra creixent
###!-----------------------------------------
###!
#init c53 call_registry
#r 101
#r 102
#r 103
#r 104
#r 105
#r 106
#r 107
#r 108
#r 109
#r 110
#r 1111
#r 1112
#r 1113
#r 1114
#r 1115
#r 1116
#r 1118
#r 1119
#r 1120
#r 11121
#r 11122
#r 11123
#r 11124
#r 11125
#r 11126
#r 11127
#r 11128
#r 11129
#r 11130
#r 11131
#r 11132
#c 100
false
##false
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#c 104
true
##true
#c 105
true
##true
#c 106
true
##true
#c 107
true
##true
#c 108
true
##true
#c 109
true
##true
#c 110
true
##true
#c 111
false
##false
#c 1110
false
##false
#c 1111
true
##true
#c 1112
true
##true
#c 1113
true
##true
#c 1114
true
##true
#c 1115
true
##true
#c 1116
true
##true
#c 1117
false
##false
#c 1118
true
##true
#c 1119
true
##true
#c 1120
true
##true
#c 1121
false
##false
#c 11120
false
##false
#c 11121
true
##true
#c 11122
true
##true
#c 11123
true
##true
#c 11124
true
##true
#c 11125
true
##true
#c 11126
true
##true
#c 11127
true
##true
#c 11128
true
##true
#c 11129
true
##true
#c 11130
true
##true
#c 11131
true
##true
#c 11132
true
##true
#c 11133
false
##false
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101

##
#nom_cr 102

##
#nom_cr 103

##
#nom_cr 104

##
#nom_cr 105

##
#nom_cr 106

##
#nom_cr 107

##
#nom_cr 108

##
#nom_cr 109

##
#nom_cr 110

##
#nom_cr 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1111

##
#nom_cr 1112

##
#nom_cr 1113

##
#nom_cr 1114

##
#nom_cr 1115

##
#nom_cr 1116

##
#nom_cr 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1118

##
#nom_cr 1119

##
#nom_cr 1120

##
#nom_cr 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11121

##
#nom_cr 11122

##
#nom_cr 11123

##
#nom_cr 11124

##
#nom_cr 11125

##
#nom_cr 11126

##
#nom_cr 11127

##
#nom_cr 11128

##
#nom_cr 11129

##
#nom_cr 11130

##
#nom_cr 11131

##
#nom_cr 11132

##
#nom_cr 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
1
##1
#num_trucades 102
1
##1
#num_trucades 103
1
##1
#num_trucades 104
1
##1
#num_trucades 105
1
##1
#num_trucades 106
1
##1
#num_trucades 107
1
##1
#num_trucades 108
1
##1
#num_trucades 109
1
##1
#num_trucades 110
1
##1
#num_trucades 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1111
1
##1
#num_trucades 1112
1
##1
#num_trucades 1113
1
##1
#num_trucades 1114
1
##1
#num_trucades 1115
1
##1
#num_trucades 1116
1
##1
#num_trucades 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1118
1
##1
#num_trucades 1119
1
##1
#num_trucades 1120
1
##1
#num_trucades 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11121
1
##1
#num_trucades 11122
1
##1
#num_trucades 11123
1
##1
#num_trucades 11124
1
##1
#num_trucades 11125
1
##1
#num_trucades 11126
1
##1
#num_trucades 11127
1
##1
#num_trucades 11128
1
##1
#num_trucades 11129
1
##1
#num_trucades 11130
1
##1
#num_trucades 11131
1
##1
#num_trucades 11132
1
##1
#num_trucades 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
31
##31
#es_buit
false
##false
#dump

##
#r 101
#r 11132
#r 1116
#num_trucades 101
2
##2
#num_trucades 11132
2
##2
#num_trucades 1116
2
##2
#num_entrades
31
##31
#es_buit
false
##false
#dump

##
#as 101 "I-101Bis"
#as 11132 "I-11132Bis"
#as 1116 "I-1116Bis"
#nom_cr 101
I-101Bis
##I-101Bis
#nom_cr 11132
I-11132Bis
##I-11132Bis
#nom_cr 1116
I-1116Bis
##I-1116Bis
#num_entrades
31
##31
#dump
101 I-101Bis 2 11132 I-11132Bis 2 1116 I-1116Bis 2 
##101 I-101Bis 2 11132 I-11132Bis 2 1116 I-1116Bis 2 
#as 11132 "I-101Bis"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#as 11132 "I-11132Bis"
#as 101 "I-11132Bis"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#destroy
###!
###!
###!-----------------------------------------
###5.4 registra decreixent
###!-----------------------------------------
###!
#init c54 call_registry
#r 11132
#r 11131
#r 11130
#r 11129
#r 11128
#r 11127
#r 11126
#r 11125
#r 11124
#r 11123
#r 11122
#r 11121
#r 1120
#r 1119
#r 1118
#r 1116
#r 1115
#r 1114
#r 1113
#r 1112
#r 1111
#r 110
#r 109
#r 108
#r 107
#r 106
#r 105
#r 104
#r 103
#r 102
#r 101
#c 100
false
##false
#c 101
true
##true
#c 102
true
##true
#c 103
true
##true
#c 104
true
##true
#c 105
true
##true
#c 106
true
##true
#c 107
true
##true
#c 108
true
##true
#c 109
true
##true
#c 110
true
##true
#c 111
false
##false
#c 1110
false
##false
#c 1111
true
##true
#c 1112
true
##true
#c 1113
true
##true
#c 1114
true
##true
#c 1115
true
##true
#c 1116
true
##true
#c 1117
false
##false
#c 1118
true
##true
#c 1119
true
##true
#c 1120
true
##true
#c 1121
false
##false
#c 11120
false
##false
#c 11121
true
##true
#c 11122
true
##true
#c 11123
true
##true
#c 11124
true
##true
#c 11125
true
##true
#c 11126
true
##true
#c 11127
true
##true
#c 11128
true
##true
#c 11129
true
##true
#c 11130
true
##true
#c 11131
true
##true
#c 11132
true
##true
#c 11133
false
##false
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101

##
#nom_cr 102

##
#nom_cr 103

##
#nom_cr 104

##
#nom_cr 105

##
#nom_cr 106

##
#nom_cr 107

##
#nom_cr 108

##
#nom_cr 109

##
#nom_cr 110

##
#nom_cr 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1111

##
#nom_cr 1112

##
#nom_cr 1113

##
#nom_cr 1114

##
#nom_cr 1115

##
#nom_cr 1116

##
#nom_cr 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1118

##
#nom_cr 1119

##
#nom_cr 1120

##
#nom_cr 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11121

##
#nom_cr 11122

##
#nom_cr 11123

##
#nom_cr 11124

##
#nom_cr 11125

##
#nom_cr 11126

##
#nom_cr 11127

##
#nom_cr 11128

##
#nom_cr 11129

##
#nom_cr 11130

##
#nom_cr 11131

##
#nom_cr 11132

##
#nom_cr 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
1
##1
#num_trucades 102
1
##1
#num_trucades 103
1
##1
#num_trucades 104
1
##1
#num_trucades 105
1
##1
#num_trucades 106
1
##1
#num_trucades 107
1
##1
#num_trucades 108
1
##1
#num_trucades 109
1
##1
#num_trucades 110
1
##1
#num_trucades 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1111
1
##1
#num_trucades 1112
1
##1
#num_trucades 1113
1
##1
#num_trucades 1114
1
##1
#num_trucades 1115
1
##1
#num_trucades 1116
1
##1
#num_trucades 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1118
1
##1
#num_trucades 1119
1
##1
#num_trucades 1120
1
##1
#num_trucades 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11121
1
##1
#num_trucades 11122
1
##1
#num_trucades 11123
1
##1
#num_trucades 11124
1
##1
#num_trucades 11125
1
##1
#num_trucades 11126
1
##1
#num_trucades 11127
1
##1
#num_trucades 11128
1
##1
#num_trucades 11129
1
##1
#num_trucades 11130
1
##1
#num_trucades 11131
1
##1
#num_trucades 11132
1
##1
#num_trucades 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
31
##31
#es_buit
false
##false
#dump

##
#r 101
#r 11132
#r 1116
#num_trucades 101
2
##2
#num_trucades 11132
2
##2
#num_trucades 1116
2
##2
#num_entrades
31
##31
#es_buit
false
##false
#dump

##
#as 101 "I-101Bis"
#as 11132 "I-11132Bis"
#as 1116 "I-1116Bis"
#nom_cr 101
I-101Bis
##I-101Bis
#nom_cr 11132
I-11132Bis
##I-11132Bis
#nom_cr 1116
I-1116Bis
##I-1116Bis
#num_entrades
31
##31
#dump
101 I-101Bis 2 11132 I-11132Bis 2 1116 I-1116Bis 2 
##101 I-101Bis 2 11132 I-11132Bis 2 1116 I-1116Bis 2 
#destroy
###!
###!
###!-----------------------------------------
###5.5 desordre
###!-----------------------------------------
###!
#init c55 call_registry
#as 11132 "I-11132"
#as 11131 "I-11131"
#as 11130 "I-11130"
#as 103 "I-103"
#as 101 "I-101"
#as 102 "I-102"
#as 1120 "I-1120"
#as 1119 "I-1119"
#as 110 "I-110"
#as 11121 "I-11121"
#as 11123 "I-11123"
#as 11122 "I-11122"
#as 108 "I-108"
#as 1112 "I-1112"
#as 11129 "I-11129"
#as 11124 "I-11124"
#as 11125 "I-11125"
#as 1118 "I-1118"
#as 1116 "I-1116"
#as 1115 "I-1115"
#as 109 "I-109"
#as 107 "I-107"
#as 1114 "I-1114"
#as 104 "I-104"
#as 105 "I-105"
#as 106 "I-106"
#as 1111 "I-1111"
#as 1113 "I-1113"
#as 11128 "I-11128"
#as 11126 "I-11126"
#as 11127 "I-11127"
#c 100
false
##false
#c 111
false
##false
#c 1110
false
##false
#c 1117
false
##false
#c 1121
false
##false
#c 11120
false
##false
#c 11133
false
##false
#c 101
true
##true
#c 11132
true
##true
#c 1116
true
##true
#nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101
I-101
##I-101
#nom_cr 11132
I-11132
##I-11132
#nom_cr 1116
I-1116
##I-1116
#num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_trucades 101
0
##0
#num_trucades 11132
0
##0
#num_trucades 1116
0
##0
#num_entrades
31
##31
#es_buit
false
##false
#dump
101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#r 101
#r 11132
#r 1116
#num_trucades 101
1
##1
#num_trucades 11132
1
##1
#num_trucades 1116
1
##1
#dump
102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101 1 11132 I-11132 1 1116 I-1116 1 
##102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101 1 11132 I-11132 1 1116 I-1116 1 
#as 101 "I-101Bis"
#as 11132 "I-11132Bis"
#as 1116 "I-1116Bis"
#nom_cr 101
I-101Bis
##I-101Bis
#nom_cr 11132
I-11132Bis
##I-11132Bis
#nom_cr 1116
I-1116Bis
##I-1116Bis
#dump
102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101Bis 1 11132 I-11132Bis 1 1116 I-1116Bis 1 
##102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 101 I-101Bis 1 11132 I-11132Bis 1 1116 I-1116Bis 1 
#as 11132 "I-101Bis"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#as 11132 "I-11132Bis"
#as 101 "I-11132Bis"
#dump
Error::call_registry:22:Nom repetit.
##Error::call_registry:22:Nom repetit.
#destroy
###!
###!
###!-----------------------------------------
###5.6 elimina assignacions
###!-----------------------------------------
###!
#init c56 call_registry
#as 101 "I-101"
#as 102 "I-102"
#as 103 "I-103"
#as 104 "I-104"
#as 105 "I-105"
#as 106 "I-106"
#as 107 "I-107"
#as 108 "I-108"
#as 109 "I-109"
#as 110 "I-110"
#as 1111 "I-1111"
#as 1112 "I-1112"
#as 1113 "I-1113"
#as 1114 "I-1114"
#as 1115 "I-1115"
#as 1116 "I-1116"
#as 1118 "I-1118"
#as 1119 "I-1119"
#as 1120 "I-1120"
#as 11121 "I-11121"
#as 11122 "I-11122"
#as 11123 "I-11123"
#as 11124 "I-11124"
#as 11125 "I-11125"
#as 11126 "I-11126"
#as 11127 "I-11127"
#as 11128 "I-11128"
#as 11129 "I-11129"
#as 11130 "I-11130"
#as 11131 "I-11131"
#as 11132 "I-11132"
#dump
101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#e 101
#num_entrades
30
##30
#es_buit
false
##false
#dump
102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#as 101 "I-101Bis"
#num_entrades
31
##31
#dump
101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#e 11132
#num_entrades
30
##30
#es_buit
false
##false
#dump
101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#as 11132 "I-11132Bis"
#num_entrades
31
##31
#dump
101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#e 1116
#num_entrades
30
##30
#es_buit
false
##false
#dump
101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#as 1116 "I-1116Bis"
#num_entrades
31
##31
#dump
101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116Bis 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116Bis 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#e 11128
#e 11128
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#num_entrades
30
##30
#es_buit
false
##false
#dump
101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116Bis 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116Bis 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#as 11128 "I-11128Bis"
#num_entrades
31
##31
#dump
101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128Bis 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116Bis 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101Bis 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128Bis 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132Bis 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116Bis 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#e 1118
#e 1119
#e 1120
#e 11121
#e 11122 
#e 11123
#e 11124
#e 11125
#e 11126
#e 11127
#e 11128
#e 11129
#e 11130
#e 11131
#e 11132
#e 1115
#e 1114
#e 1113
#e 1112
#e 1111
#e 110
#e 109
#e 108
#e 107
#e 106
#e 105
#e 104
#e 103
#e 102
#e 101
#e 1116
#num_entrades
0
##0
#dump

##
#destroy
###!
###!
###!-----------------------------------------
###5.7 elimina registres
###!-----------------------------------------
###!
#init c57 call_registry
#r 11132
#r 11131
#r 11130
#r 11129
#r 11128
#r 11127
#r 11126
#r 11125
#r 11124
#r 11123
#r 11122
#r 11121
#r 1120
#r 1119
#r 1118
#r 1116
#r 1115
#r 1114
#r 1113
#r 1112
#r 1111
#r 110
#r 109
#r 108
#r 107
#r 106
#r 105
#r 104
#r 103
#r 102
#r 101
#dump

##
#e 101
#num_entrades
30
##30
#c 101 
false
##false
#num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#es_buit
false
##false
#as 101 "I-101Bis"
#num_entrades
31
##31
#dump
101 I-101Bis 0 
##101 I-101Bis 0 
#e 11132
#num_entrades
30
##30
#c 11132
false
##false
#num_trucades 11132
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11132
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
101 I-101Bis 0 
##101 I-101Bis 0 
#as 11132 "I-11132Bis"
#num_entrades
31
##31
#dump
101 I-101Bis 0 11132 I-11132Bis 0 
##101 I-101Bis 0 11132 I-11132Bis 0 
#e 1116
#num_entrades
30
##30
#c 1116
false
##false
#num_trucades 1116
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 1116
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
101 I-101Bis 0 11132 I-11132Bis 0 
##101 I-101Bis 0 11132 I-11132Bis 0 
#as 1116 "I-1116Bis"
#num_entrades
31
##31
#dump
101 I-101Bis 0 11132 I-11132Bis 0 1116 I-1116Bis 0 
##101 I-101Bis 0 11132 I-11132Bis 0 1116 I-1116Bis 0 
#e 11128
#num_entrades
30
##30
#c 11128
false
##false
#num_trucades 11128
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#nom_cr 11128
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#dump
101 I-101Bis 0 11132 I-11132Bis 0 1116 I-1116Bis 0 
##101 I-101Bis 0 11132 I-11132Bis 0 1116 I-1116Bis 0 
#as 11128 "I-11128Bis"
#dump
101 I-101Bis 0 11128 I-11128Bis 0 11132 I-11132Bis 0 1116 I-1116Bis 0 
##101 I-101Bis 0 11128 I-11128Bis 0 11132 I-11132Bis 0 1116 I-1116Bis 0 
#num_entrades
31
##31
#e 1118
#e 1119
#e 1120
#e 11121
#e 11122 
#e 11123
#e 11124
#e 11125
#e 11126
#e 11127
#e 11128
#e 11129
#e 11130
#e 11131
#e 11132
#e 1115
#e 1114
#e 1113
#e 1112
#e 1111
#e 110
#e 109
#e 108
#e 107
#e 106
#e 105
#e 104
#e 103
#e 102
#e 101
#e 1116
#num_entrades
0
##0
#dump

##
#destroy
###!
###!
###!
###!-----------------------------------------
###6 Call_Registry: construccio per copia
###!-----------------------------------------
###!
###!-----------------------------------------
###6.1 buit
###!-----------------------------------------
###!
#init c61 call_registry
###!
#initcopy c61Bis = c61
#c61 destroy 
###!
#c61Bis es_buit
true
##true
#c61Bis num_entrades
0
##0
#c61Bis c 101
false
##false
#c61Bis num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c61Bis nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c61Bis e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c61Bis dump

##
#c61Bis destroy
###!
###!
###!-----------------------------------------
###6.2 Una entrada
###!-----------------------------------------
###!
#init c62 call_registry
#c62 as 102 "I-102"
###!
#initcopy c62Bis = c62
#c62 destroy
###!
#c62Bis es_buit
false
##false
#c62Bis num_entrades
1
##1
#c62Bis c 101
false
##false
#c62Bis num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c62Bis nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c62Bis e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c62Bis c 102
true
##true
#c62Bis num_trucades 102
0
##0
#c62Bis nom_cr 102
I-102
##I-102
#c62Bis c 103
false
##false
#c62Bis num_trucades 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c62Bis nom_cr 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c62Bis e 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c62Bis dump
102 I-102 0 
##102 I-102 0 
#c62Bis destroy
###!
###!
###!-----------------------------------------
###6.3 31 entrades
###!-----------------------------------------
###!
#init c63 call_registry
#c63 as 11132 "I-11132"
#c63 as 11131 "I-11131"
#c63 as 11130 "I-11130"
#c63 as 103 "I-103"
#c63 as 101 "I-101"
#c63 as 102 "I-102"
#c63 as 1120 "I-1120"
#c63 as 1119 "I-1119"
#c63 as 110 "I-110"
#c63 as 11121 "I-11121"
#c63 as 11123 "I-11123"
#c63 as 11122 "I-11122"
#c63 as 108 "I-108"
#c63 as 1112 "I-1112"
#c63 as 11129 "I-11129"
#c63 as 11124 "I-11124"
#c63 as 11125 "I-11125"
#c63 as 1118 "I-1118"
#c63 as 1116 "I-1116"
#c63 as 1115 "I-1115"
#c63 as 109 "I-109"
#c63 as 107 "I-107"
#c63 as 1114 "I-1114"
#c63 as 104 "I-104"
#c63 as 105 "I-105"
#c63 as 106 "I-106"
#c63 as 1111 "I-1111"
#c63 as 1113 "I-1113"
#c63 as 11128 "I-11128"
#c63 as 11126 "I-11126"
#c63 as 11127 "I-11127"
###!
#initcopy c63Bis = c63
#c63 destroy
###!
#c63Bis c 100
false
##false
#c63Bis c 111
false
##false
#c63Bis c 1110
false
##false
#c63Bis c 1117
false
##false
#c63Bis c 1121
false
##false
#c63Bis c 11120
false
##false
#c63Bis c 11133
false
##false
#c63Bis c 101
true
##true
#c63Bis c 11132
true
##true
#c63Bis c 1116
true
##true
#c63Bis nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis nom_cr 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis nom_cr 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis nom_cr 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis nom_cr 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis nom_cr 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis nom_cr 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis nom_cr 101
I-101
##I-101
#c63Bis nom_cr 11132
I-11132
##I-11132
#c63Bis nom_cr 1116
I-1116
##I-1116
#c63Bis num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis num_trucades 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis num_trucades 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis num_trucades 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis num_trucades 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis num_trucades 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis num_trucades 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c63Bis num_trucades 101
0
##0
#c63Bis num_trucades 11132
0
##0
#c63Bis num_trucades 1116
0
##0
#c63Bis num_entrades
31
##31
#c63Bis es_buit
false
##false
#c63Bis dump
101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
##101 I-101 0 102 I-102 0 103 I-103 0 104 I-104 0 105 I-105 0 106 I-106 0 107 I-107 0 108 I-108 0 109 I-109 0 110 I-110 0 1111 I-1111 0 1112 I-1112 0 11121 I-11121 0 11122 I-11122 0 11123 I-11123 0 11124 I-11124 0 11125 I-11125 0 11126 I-11126 0 11127 I-11127 0 11128 I-11128 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11131 I-11131 0 11132 I-11132 0 1114 I-1114 0 1115 I-1115 0 1116 I-1116 0 1118 I-1118 0 1119 I-1119 0 1120 I-1120 0 
#c63Bis destroy
###!
###!
###!
###!-----------------------------------------
###7 Call_Registry: assignacio
###!-----------------------------------------
###!
###!-----------------------------------------
###7.1 buit
###!-----------------------------------------
###!
#init c71 call_registry
###!
#init c71Bis call_registry
#c71Bis = c71
#c71 destroy
###!
#c71Bis es_buit
true
##true
#c71Bis num_entrades
0
##0
#c71Bis c 101
false
##false
#c71Bis num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c71Bis nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c71Bis e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c71Bis dump

##
#c71Bis destroy
###!
###!
###!-----------------------------------------
###7.2 Una entrada
###!-----------------------------------------
###!
#init c72 call_registry
#c72 as 102 "I-102"
###!
#init c72Bis call_registry
#c72Bis = c72
#c72 destroy
###!
#c72Bis es_buit
false
##false
#c72Bis num_entrades
1
##1
#c72Bis c 101
false
##false
#c72Bis num_trucades 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c72Bis nom_cr 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c72Bis e 101
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c72Bis c 102
true
##true
#c72Bis num_trucades 102
0
##0
#c72Bis nom_cr 102
I-102
##I-102
#c72Bis c 103
false
##false
#c72Bis num_trucades 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c72Bis nom_cr 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c72Bis e 103
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c72Bis dump
102 I-102 0 
##102 I-102 0 
#c72Bis destroy
###!
###!
###!-----------------------------------------
###7.3 31 entrades
###!-----------------------------------------
###!
#init c73 call_registry
#c73 as 11132 "I-11132"
#c73 r 11131
#c73 as 11130 "I-11130"
#c73 r 103
#c73 as 101 "I-101"
#c73 r 102
#c73 as 1120 "I-1120"
#c73 r 1119
#c73 as 110 "I-110"
#c73 r 11121
#c73 as 11123 "I-11123"
#c73 r 11122
#c73 as 108 "I-108"
#c73 r 1112
#c73 as 11129 "I-11129"
#c73 r 11124
#c73 as 11125 "I-11125"
#c73 r 1118
#c73 as 1116 "I-1116"
#c73 r 1115
#c73 as 109 "I-109"
#c73 r 107
#c73 as 1114 "I-1114"
#c73 r 104
#c73 r 105
#c73 as 106 "I-106"
#c73 r 1111
#c73 as 1113 "I-1113"
#c73 r 11128
#c73 as 11126 "I-11126"
#c73 r 11127
###!
#initcopy c73Bis = c73
#c73 destroy
###!
#c73Bis c 100
false
##false
#c73Bis c 111
false
##false
#c73Bis c 1110
false
##false
#c73Bis c 1117
false
##false
#c73Bis c 1121
false
##false
#c73Bis c 11120
false
##false
#c73Bis c 11133
false
##false
#c73Bis c 101
true
##true
#c73Bis c 11132
true
##true
#c73Bis c 1116
true
##true
#c73Bis nom_cr 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis nom_cr 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis nom_cr 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis nom_cr 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis nom_cr 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis nom_cr 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis nom_cr 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis nom_cr 101
I-101
##I-101
#c73Bis nom_cr 11131

##
#c73Bis nom_cr 1116
I-1116
##I-1116
#c73Bis num_trucades 100
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis num_trucades 111
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis num_trucades 1110
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis num_trucades 1117
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis num_trucades 1121
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis num_trucades 11120
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis num_trucades 11133
Error::call_registry:21:Numero inexistent.
##Error::call_registry:21:Numero inexistent.
#c73Bis num_trucades 101
0
##0
#c73Bis num_trucades 11131
1
##1
#c73Bis num_trucades 1116
0
##0
#c73Bis num_entrades
31
##31
#c73Bis es_buit
false
##false
#c73Bis dump
101 I-101 0 106 I-106 0 108 I-108 0 109 I-109 0 110 I-110 0 11123 I-11123 0 11125 I-11125 0 11126 I-11126 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11132 I-11132 0 1114 I-1114 0 1116 I-1116 0 1120 I-1120 0 
##101 I-101 0 106 I-106 0 108 I-108 0 109 I-109 0 110 I-110 0 11123 I-11123 0 11125 I-11125 0 11126 I-11126 0 11129 I-11129 0 1113 I-1113 0 11130 I-11130 0 11132 I-11132 0 1114 I-1114 0 1116 I-1116 0 1120 I-1120 0 
#c73Bis destroy
###!
###!
###!
###!
###!-----------------------------------------------------------
###! JOC DE PROVES DE EASY_DIAL
###!-----------------------------------------------------------
###!
#load jp_public_easy_dial.in
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
###!
###!
###!-----------------------------------------------------------
###! JOC DE PROVES DE DIALOG
###!-----------------------------------------------------------
###!
#load jp_public_dialog.in
###!----------------------------------------------
###!                                              
###! MODUL DIALOG
###!
###!----------------------------------------------
###1 call_registry buit
###!----------------------------------------------
###!
#init cc01 call_registry
#dump

##
#init easi01 easy_dial cc01
#dialog ""
 No hi ha telefons amb el prefix en curs. 
0
## No hi ha telefons amb el prefix en curs. 
##0
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#dump

##
#init easi01 easy_dial cc01
#dialog "m"
 Prefix en curs indefinit. 
0
## Prefix en curs indefinit. 
##0
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###2 call_registry (1 string)
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "maria"
#r 300
#dump
300 maria 1 
##300 maria 1 
#init easi01 easy_dial cc01
#dialog ""
maria 
300
##maria 
##300
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###3 call_registry (2 strings) sense prefix en comú
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "jose"
#as 301 "maria"
#r 300
#r 300
#dump
301 maria 0 300 jose 2 
##301 maria 0 300 jose 2 
#init easi01 easy_dial cc01
#dialog ""
jose 
300
##jose 
##300
#dialog "j"
jose  No hi ha telefons amb el prefix en curs. 
0
##jose  No hi ha telefons amb el prefix en curs. 
##0
#dialog "m"
jose maria 
301
##jose maria 
##301
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###4 call_registry (2 strings) amb un simbol en comu
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "miguel"
#as 301 "maria"
#r 300
#r 300
#dump
301 maria 0 300 miguel 2 
##301 maria 0 300 miguel 2 
#init easi01 easy_dial cc01
#dialog ""
miguel 
300
##miguel 
##300
#dialog "m"
miguel maria 
301
##miguel maria 
##301
#dialog "ma"
miguel maria  No hi ha telefons amb el prefix en curs. 
0
##miguel maria  No hi ha telefons amb el prefix en curs. 
##0
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###5 call_registry (2 strings) amb dos simbols en comu
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "manuel"
#as 301 "maria"
#r 300
#r 300
#dump
301 maria 0 300 manuel 2 
##301 maria 0 300 manuel 2 
#init easi01 easy_dial cc01
#dialog ""
manuel 
300
##manuel 
##300
#dialog "m"
manuel maria 
301
##manuel maria 
##301
#dialog "ma"
manuel maria  No hi ha telefons amb el prefix en curs. 
0
##manuel maria  No hi ha telefons amb el prefix en curs. 
##0
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###6 call_registry (2 strings) amb tres simbols en comu
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "maria"
#r 300
#r 300
#dump
301 maria 0 300 mar 2 
##301 maria 0 300 mar 2 
#init easi01 easy_dial cc01
#dialog ""
mar 
300
##mar 
##300
#dialog "m"
mar maria 
301
##mar maria 
##301
#dialog "ma"
mar maria  No hi ha telefons amb el prefix en curs. 
0
##mar maria  No hi ha telefons amb el prefix en curs. 
##0
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###7 call_registry (2 strings) igual que (6) canviant les frequencies
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "maria"
#r 301
#r 301
#dump
300 mar 0 301 maria 2 
##300 mar 0 301 maria 2 
#init easi01 easy_dial cc01
#dialog ""
maria 
301
##maria 
##301
#dialog "m"
maria mar 
300
##maria mar 
##300
#dialog "ma"
maria mar  No hi ha telefons amb el prefix en curs. 
0
##maria mar  No hi ha telefons amb el prefix en curs. 
##0
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###8 call_registry (3 strings) tots els prefixes diferents
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "antonio"
#as 301 "sara"
#as 302 "victor"
#r 300
#r 300
#r 301
#dump
302 victor 0 301 sara 1 300 antonio 2 
##302 victor 0 301 sara 1 300 antonio 2 
#init easi01 easy_dial cc01
#dialog ""
antonio 
300
##antonio 
##300
#dialog "s"
antonio sara 
301
##antonio sara 
##301
#dialog "v"
antonio victor 
302
##antonio victor 
##302
#dialog "a"
antonio  No hi ha telefons amb el prefix en curs. 
0
##antonio  No hi ha telefons amb el prefix en curs. 
##0
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###9 call_registry (3 strings) tots els prefixes diferents canviant frequencies
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "antonio"
#as 301 "sara"
#as 302 "victor"
#r 301
#r 301
#r 302
#dump
300 antonio 0 302 victor 1 301 sara 2 
##300 antonio 0 302 victor 1 301 sara 2 
#init easi01 easy_dial cc01
#dialog ""
sara 
301
##sara 
##301
#dialog "s"
sara  No hi ha telefons amb el prefix en curs. 
0
##sara  No hi ha telefons amb el prefix en curs. 
##0
#dialog "v"
sara victor 
302
##sara victor 
##302
#dialog "a"
sara antonio 
300
##sara antonio 
##300
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###10 call_registry (3 strings) tots els prefixes diferents canviant frequencies
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "antonio"
#as 301 "sara"
#as 302 "victor"
#r 302
#r 302
#r 301
#dump
300 antonio 0 301 sara 1 302 victor 2 
##300 antonio 0 301 sara 1 302 victor 2 
#init easi01 easy_dial cc01
#dialog ""
victor 
302
##victor 
##302
#dialog "s"
victor sara 
301
##victor sara 
##301
#dialog "v"
victor  No hi ha telefons amb el prefix en curs. 
0
##victor  No hi ha telefons amb el prefix en curs. 
##0
#dialog "a"
victor antonio 
300
##victor antonio 
##300
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###11 call_registry (3 strings) dos prefixes = (1 simbol) i un diferent
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "victor"
#as 301 "valentin"
#as 302 "rosa"
#r 302
#r 302
#r 301
#dump
300 victor 0 301 valentin 1 302 rosa 2 
##300 victor 0 301 valentin 1 302 rosa 2 
#init easi01 easy_dial cc01
#dialog "vi"
rosa valentin victor 
300
##rosa valentin victor 
##300
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "victor"
#as 301 "valentin"
#as 302 "rosa"
#r 301
#r 301
#r 302
#dump
300 victor 0 302 rosa 1 301 valentin 2 
##300 victor 0 302 rosa 1 301 valentin 2 
#init easi01 easy_dial cc01
#dialog "r<v"
valentin rosa valentin victor 
300
##valentin rosa valentin victor 
##300
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "victor"
#as 301 "valentin"
#as 302 "rosa"
#r 300
#r 300
#r 302
#dump
301 valentin 0 302 rosa 1 300 victor 2 
##301 valentin 0 302 rosa 1 300 victor 2 
#init easi01 easy_dial cc01
#dialog "v<r"
victor valentin victor rosa 
302
##victor valentin victor rosa 
##302
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "victor"
#as 301 "valentin"
#as 302 "rosa"
#r 302
#r 302
#r 300
#dump
301 valentin 0 300 victor 1 302 rosa 2 
##301 valentin 0 300 victor 1 302 rosa 2 
#init easi01 easy_dial cc01
#dialog "va"
rosa victor valentin 
301
##rosa victor valentin 
##301
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###12 call_registry (3 strings) tres prefixes = (1 simbol)
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "victor"
#as 301 "valentin"
#as 302 "veronica"
#r 300
#r 300
#r 301
#dump
302 veronica 0 301 valentin 1 300 victor 2 
##302 veronica 0 301 valentin 1 300 victor 2 
#init easi01 easy_dial cc01
#dialog "ve"
victor valentin veronica 
302
##victor valentin veronica 
##302
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "victor"
#as 301 "valentin"
#as 302 "veronica"
#r 302
#r 302
#r 301
#dump
300 victor 0 301 valentin 1 302 veronica 2 
##300 victor 0 301 valentin 1 302 veronica 2 
#init easi01 easy_dial cc01
#dialog "vi"
veronica valentin victor 
300
##veronica valentin victor 
##300
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###13 call_registry (3 strings) tres prefixes = (3 simbols)
###!----------------------------------------------
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "mari
#as 302 "maria"
#r 300
#r 300
#r 301
#dump
302 maria 0 301 mari 1 300 mar 2 
##302 maria 0 301 mari 1 300 mar 2 
#init easi01 easy_dial cc01
#dialog "ma"
mar mari maria 
302
##mar mari maria 
##302
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "mari
#as 302 "maria"
#r 301
#r 301
#r 302
#dump
300 mar 0 302 maria 1 301 mari 2 
##300 mar 0 302 maria 1 301 mari 2 
#init easi01 easy_dial cc01
#dialog "ma"
mari maria mar 
300
##mari maria mar 
##300
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "mari
#as 302 "maria"
#r 302
#r 302
#r 301
#dump
300 mar 0 301 mari 1 302 maria 2 
##300 mar 0 301 mari 1 302 maria 2 
#init easi01 easy_dial cc01
#dialog "ma"
maria mari mar 
300
##maria mari mar 
##300
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "mari
#as 302 "maria"
#r 300
#r 300
#r 302
#init easi01 easy_dial cc01
#dialog "ma"
mar maria mari 
301
##mar maria mari 
##301
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "mari
#as 302 "maria"
#r 301
#r 301
#r 300
#init easi01 easy_dial cc01
#dialog "ma"
mari mar maria 
302
##mari mar maria 
##302
#cc01 destroy
#easi01 destroy
###!
#init cc01 call_registry
#as 300 "mar"
#as 301 "mari
#as 302 "maria"
#r 302
#r 302
#r 300
#init easi01 easy_dial cc01
#dialog "ma"
maria mar mari 
301
##maria mar mari 
##301
#cc01 destroy
#easi01 destroy
###!
###!
###!
###!----------------------------------------------
###14 call_registry (5 strings) utilitzant |
###!----------------------------------------------
###!
#init cc02 call_registry
#as 500 maria
#as 501 maruchi
#as 502 marisol
#as 503 marisa
#as 504 marimar
#as 505 mar
#r 500
#r 501
#r 502
#r 503
#r 504
#r 505
#r 500
#r 501
#r 502
#r 503
#r 504
#r 500
#r 501
#r 502
#r 503
#r 500
#r 501
#r 502
#r 500
#r 501
#r 500
#init easi02 easy_dial cc02
#dialog "mar|"
maria maruchi marisol marisa mar 
505
##maria maruchi marisol marisa mar 
##505
#cc02 destroy
#easi02 destroy
###!
###!
###!
###!----------------------------------------------
###!                                              
###15 call_registry mitja tots els recorreguts
###!
###!----------------------------------------------
###!
#init cc03 call_registry
#as 600 "jose"
#as 601 "manolo"
#as 602 "miguel"
#as 603 "mari"
#as 604 "manoli"
#as 605 "marisa"
#as 606 "marisol"
#as 607 "maria"
#as 608 "antonio"
#r 600
#r 601
#r 602
#r 603
#r 604
#r 605
#r 606
#r 607
#r 608
#r 600
#r 601
#r 602
#r 603
#r 604
#r 605
#r 606
#r 607
#r 600
#r 601
#r 602
#r 603
#r 604
#r 605
#r 606
#r 600
#r 601
#r 602
#r 603
#r 604
#r 605
#r 600
#r 601
#r 602
#r 603
#r 604
#r 600
#r 601
#r 602
#r 603
#r 600
#r 601
#r 602
#r 600
#r 601
#r 600
#init easi03 easy_dial cc03
#dialog mi<aria<<<n<<<a
jose manolo miguel manolo mari marisa marisol maria marisol marisa mari manoli mari manolo jose antonio 
608
##jose manolo miguel manolo mari marisa marisol maria marisol marisa mari manoli mari manolo jose antonio 
##608
###!
#cc03 destroy
#easi03 destroy
###!
###!
###!
###!
###!
#exit
