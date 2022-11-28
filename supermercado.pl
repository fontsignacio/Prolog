precioUnitario(producto(tomate), 12.50).
precioUnitario(producto(leche, sancor), 2.45).
precioUnitario(producto(papa), 4.50).
precioUnitario(producto(yogur, laSerenisima), 1.75).
precioUnitario(producto(yogur, sancor), 1.65).
precioUnitario(producto(yogur, manfrey), 1.15).
precioUnitario(producto(fosforos, los3Patitos), 1).

%El producto se representa como un functor con: 
%El nombre de un producto genérico, o bien
%El nombre de un producto y la marca que lo comercializa 

compro(leo, producto(tomate), 2).
compro(leo, producto(yogur, manfrey), 10).
compro(leo, producto(papa), 1).
compro(nico, producto(tomate), 3).
compro(flor, producto(yogur, laSerenisima), 2).
compro(flor, producto(leche, sancor), 4).

marcaImportante(sancor).
marcaImportante(laSerenisima).


%Se pide:
%1) Realice las consultas que permitan determinar a. quiénes compraron productos de Sancor (debe devolver los individuos leo y flor)

%a. qué compró Leo
%b. si Leo compró 2 cosas de algún producto (debe decirme que sí).
 
%2) Resuelva el predicado cuantoGasto/2 que relaciona una persona con el total que gastó.  ? cuantoGasto(flor, Total)
%Total = 13.5 (3.5 de los dos yogures y 10 de las cuatro leches)



cuantoGasto(flor,Total) :- compro(flor,A,L),precioUnitario(A,H), Total is L*H.



