list_length([],0).
list_length([_|TAIL],N) :- list_length(TAIL,L), N is L+1.