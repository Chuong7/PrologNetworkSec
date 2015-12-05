needsAlert(FIRST,LAST):- owner(X, FIRST, LAST), inDanger(X).

member(X,[X|Y]).
member(X,[Y|Z]):-member(X,Z). 

% nonmember defined to see if element has membership in a list
nonmember(X,[X|_]):- !,fail.
nonmember(X,[_|Z]):- !, nonmember(X,Z).
nonmember(_,[]).

% iterate through nodes and once found an infection node, go look at node before that to check infection
% bidirectional contact 
inDanger(X):- inDanger(X,[]).
inDanger(X,W):- infected(X,B), antivirus(X,A), A<B. 
inDanger(X,W):- contact(X,Y),nonmember(X,W), inDanger(Y,[X|W]),antivirus(X,C), infected(Y,B), antivirus(Y,A),(A<B,C<B). 
inDanger(X,W):- contact(Y,X),nonmember(X,W), inDanger(Y,[X|W]),antivirus(X,C), infected(Y,B), antivirus(Y,A),(A<B,C<B). 

% path rules provided in email by Ivan
path(X,Y):-path(X,Y,[X]).

path(X,X,Visited).
path(X,Z,Visited):-edge(X,Y),
       notmember(Y,Visited),
       path(Y,Z,[Y|Visited]).
