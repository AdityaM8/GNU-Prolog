male(aa).
male(ba).
male(ca).
male(da).
male(ea).
female(ai).
female(bi).
female(ci).
female(di).
female(ei).
parent(aa,bi).
parent(ai,bi).
parent(aa,ba).
parent(ai,ba).
parent(ba,ca).
parent(ci,ca).
parent(ba,di).
parent(ci,di).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
siblings(X,Y) :- parent(Z,X),parent(Z,Y),X\==Y.
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
grandchild(X,Y) :- grandparent(Y,X).