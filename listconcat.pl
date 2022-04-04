concatination([],L,L).
concatination([X|L1],L2,[X|L3]) :- concatination(L1,L2,L3).