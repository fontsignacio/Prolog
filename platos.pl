alimento1(bizcocho([(leche,1),(azucar,2),(harina,1),(huevo,3)])).
alimento2(ensalada([(lechuga,1),(tomate,2),(huevo,1)])).

puedo_cocinar(A,B):- (alimento1(A), B =:= 4);(alimento2(A), B =:= 3).


