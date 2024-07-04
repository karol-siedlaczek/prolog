%ZAD 1 SILNIA

silnia(0,1).
silnia(N,Wynik):-
    N>0,
    N_Nowa is N-1,
    silnia(N_Nowa,TempWynik),
    Wynik is N*TempWynik.
%np. silnia(5,Wynik). Wynik = 120


%ZAD 2 FIBONACCI

fib(N,0):-
    N =:= 0,
    !.
fib(N,1):-
    N =:= 1,
    !.
fib(N,Wynik):-
    fib(N-1,Wynik1),
    fib(N-2,Wynik2),
    Wynik is Wynik1+Wynik2.
%np. fib(6,Wynik). Wynik = 8


% ZAD 3 KWADRATOWE
