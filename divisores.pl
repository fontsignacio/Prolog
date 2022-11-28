 %   “2 divide a 6"
 %   “2 divide a 12"
 %   “3 divide a 6"
 %   “3 divide a 12"
 %   “Si un número es divisible por 2 y por 3 entonces es divisible por 6"

divide(2,6).
divide(2,12).
divide(3,6).
divide(3,12).
divide(6,B) :- divide(2,B),divide(3,B).


