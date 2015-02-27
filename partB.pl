% partB ['///Users/reoscar/Google Drive/2) 2nd Year/2) Programming Paradigms/0) Prolog Summative/base.pl'].
% B1.In quidditch, “ No other player aside from the Seeker is allowed to touch the Snitch (ball)” . 
% Define a predicate snitch_caught(T) that holds if and only if the correct player of team T has 
% caught the snitch (by being in the same location as it).

snitch_caught(T) :-
	player(P, T),
	seeker(P),
	player(P, X,Y,Z),
	ball(snitch,X,Y,Z),
	write('Coordinates: '),write(X),write(', '),write(Y),write(', '),write(Z),nl.

% B2.In quidditch, a goal is scored “by sending the red, football-sized Quaffle (ball) 
% through any of the three goal hoops”. Define a predicate goal_scored(T) that holds if and 
% only if the position of the ball (ball/4) is within radius, R (in the X - Z plane), of the 
% centre of the goal that does not belong to team T (i.e. the opposing team's goal).

goal_scored(T) :-
	ball(quaffle, X1,Y,Z1),
	write('Coordinates: '),write(X1),write(', '),write(Y),write(', '),write(Z1),nl,
	goal(X2,Y,Z2, R, T2), % centre of goal
	T\=T2,
	write('Coordinates: '),write(X2),write(', '),write(Y),write(', '),write(Z2),nl,
	X = X2-X1,
	Z = Z2-Z1,
	R > sqrt((X**2)+(Z**2)).

%% goal_scored(T) :- Was written thinking that players had to be holding the ball to score
%% 	player(P, T),
%% 	chaser(P),
%% 	player(P, X1,Y,Z1),
%% 	ball(B, X1,Y,Z1),
%% 	B==quaffle,
%% 	write('Coordinates: '),write(X1),write(', '),write(Y),write(', '),write(Z1),nl,
%% 	goal(X2,Y,Z2, R, T2), % centre of goal
%% 	T\=T2,
%% 	write('Coordinates: '),write(X2),write(', '),write(Y),write(', '),write(Z2),nl,
%% 	X = X2-X1,
%% 	Z = Z2-Z1,
%% 	R > sqrt((X**2)+(Z**2)).

% B3.In quidditch a foul can be committed by a team, based on the actions of one of their 
% players under a number of disjunctive circumstances (as follows):

% “Players must not stray over the boundary lines of the pitch, although they may fly as high as desired.”

% “ No player may seize any part of an opponent's broom to slow or hinder the player ... 
% or .... collide. ” or “No player may knock the opposing team's Keeper out of the way so 
% they can score a goal easily.” etc. - basically any form of inter-player contact.

% Players “must not still be in contact with the Quaffle (ball) as it passes through a 
% hoop —the Quaffle must be thrown through.”

% “No player other than the Seeker may touch or catch the Golden Snitch.(ball)” (note 
% that this is different from B.1)

% Define a predicate foul(T) that holds if and only if a player from team T commits 
% a foul (as outlined above) based on the current state of the game.

foul(T):- 
	player(P,T),
	player(P, X,Y,Z),
% if position = off_pitch(x,y,z),
	(off_pitch(X,Y,Z);
% if a players position == another player's
	(player(E,T2),
	T\=T2,
	player(E, X,Y,Z),
	write(E));
% If goal scored while quaffle position == player position
	(goal_scored(T),
	ball(quaffle, X,Y,Z));
% snitch == caught, not by seeker
	(not(seeker(P)),
	ball(snitch, X,Y,Z))).