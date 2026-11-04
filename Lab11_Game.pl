
% Lab 11 - Game

:- dynamic letter/1.

name_game :-
    write('Hi, This is the Name Game'), nl,
    write('Choose from the following:'), nl,
    write('1- Display the current set of letters'), nl,
    write('2- Add a letter'), nl,
    write('3- Add a letter at the top'), nl,
    write('4- Add a letter at the bottom'), nl,
    write('5- Delete a letter'), nl,
    write('6- Delete all letters'), nl,
    write('7- Exit'), nl,
    read(Choice),
    menu(Choice).

menu(1) :-
    listing(letter),
    name_game.

menu(2) :-
    write('Enter a letter (a, b, or c): '),
    read(X),
    assertz(letter(X)),
    name_game.

menu(3) :-
    write('Enter a letter (a, b, or c): '),
    read(X),
    asserta(letter(X)),
    name_game.

menu(4) :-
    write('Enter a letter (a, b, or c): '),
    read(X),
    assertz(letter(X)),
    name_game.

menu(5) :-
    write('Enter a letter to delete: '),
    read(X),
    retract(letter(X)),
    name_game.

menu(6) :-
    retractall(letter(_)),
    name_game.

menu(7) :-
    write('Goodbye!').

