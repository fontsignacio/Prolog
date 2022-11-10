amigos(pedro, antonio). 
amigos(pedro, flora). 
amigos(pedro, juan). 
amigos(pedro, vicente). 
amigos(luis, felipe). 
amigos(luis, maria). 
amigos(luis, vicente). 
amigos(carlos, paloma). 
amigos(carlos, lucia). 
amigos(carlos, juan). 
amigos(carlos, vicente). 
amigos(fernando, eva).
amigos(fernando, pedro). 

millonario(pedro). 
millonario(antonio). 
millonario(flora). 

soltero(pedro). 
soltero(flora). 
soltero(eva). 
soltero(luis). 

padre_de(carlos, fernando). 
padre_de(antonio, maria). 
padre_de(antonio, carlos).

hermano_de(A,B) :- padre_de(C,A), padre_de(C,B) .


amigos_de_vicente(B,vicente) :- 
	amigos(A,B),
	amigos(A,vicente),
	soltero(B), 
	millonario(B).

pobre(A) :- not(millonario(A)).

padre(A) :- padre_de(A,B).
interesante(A) :- not(padre(A)), millonario(A).
