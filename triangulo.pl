%Escribir un programa procedimental que, dados tres valores: [ a, b y c ], responda si es posible construir un triángulo cuyos lados tengan longitud a, b y c.
%De ser así, deberá indicar también el tipo de triángulo: escaleno, isósceles o equilátero.


escaleno(A,B,C) :- (A =\= B),(B =\= C).
isoceles(A,B,C) :- (A =:= B), (B =\= C).
equilatero(A,B,C) :- (A =:= B),(B =:= C).

triangulo(A,B,C) :- (escaleno(A,B,C);isoceles(A,B,C);equilatero(A,B,C)).