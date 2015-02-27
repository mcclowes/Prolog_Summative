% game.pl

% Score
score(gryffindor,60).
score(ravenclaw,10).

% Balls
ball(bludger, 40,30,50).
ball(bludger, 50,50,50).
ball(quaffle, 27,150,15). % Part B2 - Goal scored
ball(snitch, 20,20,20). % Part B1

% Griffindor players - valid_position(P, X,Y,Z):- player(P, _), location(X,Y,Z).
player(oliver, 10,10,10).
player(katie, 25,25,25).
player(angelina, 27,150,15). % Part B3 - has quaffle -> foul
player(alicia, 30,30,30).
player(fred, 50,50,50). % has bludger
player(george, 35,35,35).
player(harry, 20,20,20). % Part B1 -  has snitch

% Ravenclaw
player(roger, 25,35,45).
player(randolph, 15,25,35).
player(jeremy, 5,15,25).
player(jason, 10,20,30).
player(duncan, 40,30,50). % has bludger
player(grant, 20,10,5).
player(cho, 40,42,44). % Part B1 - does not have snitch