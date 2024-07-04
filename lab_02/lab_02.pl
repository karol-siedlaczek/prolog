accRev([H|T],A,R) :- accRev(T,[H|A],R).
accRev([],A,A).

palindrom(X):-
	accRev(X,[],L),
	X=L.
