% La sintaxis es fibonacci(N, F) -> Término N de la sucesión (el resultado se guarda en F).
fibonacci(0, 0) :-!.
fibonacci(1, 1) :-!.
fibonacci(N ,F) :-N1 is N - 1, fibonacci(N1, F1),N2 is N - 2, fibonacci(N2, F2), F is F1 + F2.

%el fibonacci se llama recursivamente dejando el resultado en F.