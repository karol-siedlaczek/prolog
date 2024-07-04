kobieta(ania).
kobieta(julia).

meczyzna(lucjan).
meczyzna(tomek).
meczyzna(radek).

rodzic(ania,julia).
rodzic(ania,radek).
rodzic(lucjan,julia).
rodzic(lucjan,radek).

dziecko(X,Y):-rodzic(Y,X).

maz(lucjan,ania).
zona(ania,lucjan).

wiek(lucjan,33).
wiek(julia,8).
wiek(ania,31).

rodzenstwo(X,Y):-matka(Z,X),matka(Z,X);ojciec(C,X),ojciec(C,Y).
brat(X,Y):-rodzenstwo(X,Y),meczyzna(X).
siostra(X,Y):-rodzenstwo(X,Y),kobieta(X).

ojciec(X,Y):-dziecko(Y,X),meczyzna(X).
matka(X,Y):-dziecko(Y,X),kobieta(X).

wujek(X,Y):-brat(X,Z),ojciec(Z,Y),meczyzna(X).

corka(Y,X):-rodzic(X,Y),kobieta(Y).
syn(Y,X):-rodzic(X,Y),meczyzna(Y).

posiada(tomek,samochod).
posiada(tomek,samochod(fiat)).

silnia(0,1).
silnia(N,Wynik):-
    N>0,
    N_Nowa is N-1,
    silnia(N_Nowa,TempWynik),
    Wynik is N*TempWynik.






