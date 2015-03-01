% game.pl

% ['///Users/reoscar/Google Drive/2) 2nd Year/2) Programming Paradigms/0) Prolog Summative/base.pl'].

% Score
score(gryffindor,0).
score(ravenclaw,0).

ball(bludger, 40,30,50).
ball(bludger, 50,50,50).
ball(quaffle, 27,150,15). % Part B2 - Goal scored
ball(snitch, 20,20,20). % Part B1

player(oliver, 10,10,10).
player(katie, 25,25,25).
player(angelina, 27,150,10). % Part C3 - nofoul
%player(angelina, 27,150,15). % Part B3 - has quaffle -> foul
player(alicia, 10,20,31).
player(fred, 50,50,50). % has bludger
player(george, 35,35,35).
player(harry, 20,20,20). % Part B1 -  has snitch

player(roger, 25,35,45).
player(randolph, 15,25,35).
player(jeremy, 5,15,25).
player(jason, 10,20,30). % hits alicia
player(duncan, 40,30,50). % has bludger
player(grant, 20,10,5).
player(cho, 40,42,44). % Part B1 - does not have snitch

%% %Part A test case
%% %Example of an invalid team
team(hatfield, [john, jack, james, josh, jim, jacques, jeoffrey]).
chaser(john).
chaser(jack).
chaser(james).
chaser(josh.
chaser(jim).
chaser(jacques).
keeper(jeoffrey).

%% ball(bludger, 40,30,50).
%% ball(bludger, 50,50,50).
%% ball(quaffle, 27,150,15). % Part B2 - Goal scored
%% ball(snitch, 20,20,20). % Part B1

%% % Griffindor players - valid_position(P, X,Y,Z):- player(P, _), location(X,Y,Z).
%% player(oliver, 10.5,10.5,10.5).
%% player(katie, 25,25,25).
%% player(angelina, 27,150,10).
%% player(alicia, 10,20,31).
%% player(fred, 50,50,50). % has bludger
%% player(george, 35,35,35).
%% player(harry, 20,20,20). % Part B1 -  has snitch

%% % Ravenclaw
%% player(roger, 25,35,45).
%% player(randolph, 15,25,35).
%% player(jeremy, 5,15,25).
%% player(jason, 10,20,30). % hits alicia
%% player(duncan, 40,30,50). % has bludger
%% player(grant, 20,10,5).
%% player(cho, 40,42,44). % Part B1 - does not have snitch

%% %Part B Tests case
%% ball(bludger, 40,30,50).
%% ball(bludger, 50,50,50).
%% ball(quaffle, 27,150,15). % Part B2 - Goal scored
%% ball(snitch, 20,20,20). % Part B1

%% % Griffindor players - valid_position(P, X,Y,Z):- player(P, _), location(X,Y,Z).
%% player(oliver, 10.5,10.5,10.5).
%% player(katie, 25,25,25).
%% player(angelina, 27,150,10).
%% player(alicia, 10,20,31).
%% player(fred, 50,50,50). % has bludger
%% player(george, 35,35,35).
%% player(harry, 20,20,20). % Part B1 -  has snitch

%% % Ravenclaw
%% player(roger, 25,35,45).
%% player(randolph, 15,25,35).
%% player(jeremy, 5,15,25).
%% player(jason, 10,20,30). % hits alicia
%% player(duncan, 40,30,50). % has bludger
%% player(grant, 20,10,5).
%% player(cho, 40,42,44). % Part B1 - does not have snitch

%% %Part A
%% ball(bludger, 40,30,50).
%% ball(bludger, 50,50,50).
%% ball(quaffle, 27,150,15). % Part B2 - Goal scored
%% ball(snitch, 20,20,20). % Part B1

%% % Griffindor players - valid_position(P, X,Y,Z):- player(P, _), location(X,Y,Z).
%% player(oliver, 10.5,10.5,10.5).
%% player(katie, 25,25,25).
%% player(angelina, 27,150,10).
%% player(alicia, 10,20,31).
%% player(fred, 50,50,50). % has bludger
%% player(george, 35,35,35).
%% player(harry, 20,20,20). % Part B1 -  has snitch

%% % Ravenclaw
%% player(roger, 25,35,45).
%% player(randolph, 15,25,35).
%% player(jeremy, 5,15,25).
%% player(jason, 10,20,30). % hits alicia
%% player(duncan, 40,30,50). % has bludger
%% player(grant, 20,10,5).
%% player(cho, 40,42,44). % Part B1 - does not have snitch