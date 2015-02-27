% partA

% A1.Define the predicate player(P, Team) (player/2) required by player_position/4 
% that holds if and only if player P is a valid member of a defined team 
% (see base.pl, valid_position(P, X,Y,Z)).

player(P, Team) :-
	team(Team, TeamList),
	member(P, TeamList).

% Member behaves weirdly!!!!! for any but last

% A2.Define a predicate on_pitch(X,Y,Z) that holds if and only if (X,Y,Z) is a valid location 
% in the game and is inside the pitch boundary as defined by predicate pitch/4.

on_pitch(X,Y,Z) :-
	location(X,Y,Z),
	pitch(X1, Y1, X2, Y2),
	X >= X1,
	X =< X2,
	Y >= Y1,
	Y =< Y2.

% A3.Define a corresponding predicate off_pitch(X,Y,Z) that holds if and only if (X,Y,Z) 
% is not a valid location inside the pitch boundary as defined by predicate pitch/4.

off_pitch(X,Y,Z) :-
	not(on_pitch(X,Y,Z)).

% A4. Define valid_team(T) that holds if and only if the members of team T are fielding a 
% valid team in terms of size and formation - “Each team is made up of seven players, 
% consisting of three Chasers, two Beaters, one Keeper and one Seeker.”% 

valid_team(T) :-
	team(T, TeamList),
	length(TeamList, X),
	X == 7,
	findall(P, (player(P,T), chaser(P)), ChaserList),
	length(ChaserList, C),
	C == 3,
	findall(P, (player(P,T), beater(P)), BeaterList),
	length(BeaterList, B),
	B == 2,
	findall(P, (player(P,T), seeker(P)), SeekerList),
	length(SeekerList, S),
	S == 1,
	findall(P, (player(P,T), keeper(P)), KeeperList),
	length(KeeperList, K),
	K == 1.
