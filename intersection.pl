list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).
intersection([],Z,Z).
intersection([X|Y],Z,[X|W]):- list_member(X,Z),intersection(Y,Z,W).
intersection([X|Y],Z,W):- list_member(X,Z),intersection(Y,Z,W).