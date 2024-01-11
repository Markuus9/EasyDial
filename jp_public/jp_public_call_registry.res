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
