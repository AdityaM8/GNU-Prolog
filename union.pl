list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).
union([],Z,Z).
union([X|Y],Z,W):-list_member(X,Z),union(Y,Z,W).
union([X|Y],Z,[X|W]):- \+ list_member(X,Z),union(Y,Z,W).