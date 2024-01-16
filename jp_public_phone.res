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
