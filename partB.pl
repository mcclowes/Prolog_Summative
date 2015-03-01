% partB 
% B1 - snitch_caught/1 checks if team T seeker has caught the snitch
snitch_caught(T) :-
	player(P, T),
	seeker(P),
	player(P, X,Y,Z),
	ball(snitch,X,Y,Z).

% B2 - goal_scored/1 checks that team T has scored by getting the quaffle through a goal hoop
goal_scored(T) :-
	valid_team(T), % Confirm T exists
	ball(quaffle, X1,Y,Z1),
	goal(X2,Y,Z2, R, T2), % Centre of goal
	T \= T2, % Confirm T is the opponent of the team who has just conceded
	X = X2-X1,
	Z = Z2-Z1,
	R > sqrt((X**2)+(Z**2)).

% B3 - foul/1 check if a team is scoring a foul (through 1 or more of 4 possible ways)
foul(T):- 
	player(P,T),
	player(P, X,Y,Z),
% Is a player P on team T is in invalid location or off pitch?
	((off_pitch(X,Y,Z), write('Player off pitch'),nl);
% Has a player P on team T (aside from the keeper) has collided with an opposing player?
	not(keeper(P)), % As the keeper is mitigated in fouls
	(player(E,T2),
	T\=T2,
	player(E, X,Y,Z),
	write(E), write('Player collision'),nl);
% Was the quaffle was held whilst a goal was scored?
	(goal_scored(T),
	ball(quaffle, X,Y,Z),
	write('Holding quaffle'),nl);
% Was the snitch touched by a non-seeker?
	(not(seeker(P)),
	ball(snitch, X,Y,Z),
	write('Snitch caught by non-seeker'),nl)).