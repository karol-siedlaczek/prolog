kobieta(ania).
kobieta(julia).

m�czyzna(lucjan).
m�czyzna(tomek).
m�czyzna(radek).

rodzic(ania,julia).
rodzic(ania,radek).
rodzic(lucjan,julia).
rodzic(lucjan,radek).

m��(lucjan,ania).
�ona(ania,lucjan).

wiek(lucjan,33).
wiek(julia,8).
wiek(ania,31).

dziecko(X,Y):-
    rodzic(Y,X).
rodzenstwo(X,Y):-
    matka(Z,X),
    matka(Z,X);
    ojciec(C,X),
    ojciec(C,Y).
brat(X,Y):-
    rodzenstwo(X,Y),
    m�czyzna(X).
siostra(X,Y):-
    rodzenstwo(X,Y),
    kobieta(X).
ojciec(X,Y):-
    dziecko(Y,X),
    m�czyzna(X).
matka(X,Y):-
    dziecko(Y,X),
    kobieta(X).
wujek(X,Y):-
    brat(X,Z),
    ojciec(Z,Y),
    m�czyzna(X).
c�rka(Y,X):-
    rodzic(X,Y),
    kobieta(Y).
syn(Y,X):-
    rodzic(X,Y),
    m�czyzna(Y).

posiada(tomek,samochod).
posiada(tomek,samochod(fiat)).

%ZAD 1 SILNIA

silnia(0,1).
silnia(N,Wynik):-
    N>0,
    N_Nowa is N-1,
    silnia(N_Nowa,TempWynik),
    Wynik is N*TempWynik.
%np. silnia(6,Wynik). Wynik = 8

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
