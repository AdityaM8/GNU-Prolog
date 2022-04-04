list_union(L1,[],L2).
list_union([X|TAIL],L1,[X|U]) :- list_union(X,L2,U).