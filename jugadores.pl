jugador(maradona).
jugador(chamot).
jugador(balbo).
jugador(caniggia).
jugador(passarella).
jugador(pedemonti).
jugador(basualdo).

% relaciona lo que toma cada jugador
tomo(maradona, sustancia(efedrina)).
tomo(maradona, compuesto(cafeVeloz)).

tomo(caniggia, producto(cocacola, 2)).
tomo(chamot, compuesto(cafeVeloz)).
tomo(balbo, producto(gatoreit, 2)).

% relaciona la máxima cantidad de un producto que 1 jugador puede ingerir
maximo(cocacola, 3).
maximo(gatoreit, 1).
maximo(naranju, 5).

% relaciona las sustancias que tiene un compuesto
composicion(cafeVeloz, [efedrina, ajipupa, extasis, whisky, cafe]).

% sustancias prohibidas por la asociación
sustanciaProhibida(efedrina).
sustanciaProhibida(cocaina).

pasarela(A) :- not(tomo(maradona,sustancia(A))), not(tomo(maradona,compuesto(A))).

tomoPedemonti(A) :- ((tomo(maradona,compuesto(A))),(tomo(chamot,compuesto(A)))).

producto(cocacola).
toma_basualdo(A) :- not(producto(A)).

suspendido1(A,B) :- jugador(A),sustanciaProhibida(B).
suspendido2(A,B) :- jugador(A),composicion(B,_).
suspendido(A,B,C) :- suspendido1(A,B); maximo(B,C).
