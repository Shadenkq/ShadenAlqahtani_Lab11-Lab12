
% Task 1

edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Dammam', 'Qatif').
edge('Qatif', 'Dammam').
edge('Qatif', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Riyadh', 'Dammam').


travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(From, To, Visited, [To|Visited]) :-
    edge(From, To),
    \+ member(To, Visited).

path(From, To, Visited, Path) :-
    edge(From, X),
    \+ member(X, Visited),
    path(X, To, [X|Visited], Path).






