% partA
% A1 - player/2, where P is a player on team Team
player(P, Team) :-
	team(Team, TeamList),
	member(P, TeamList).

% A2 - on_pitch/3 verifies valid location on the pitch
on_pitch(X,Y,Z) :-
	location(X,Y,Z),
	pitch(X1, Y1, X2, Y2),
	X >= X1,
	X =< X2,
	Y >= Y1,
	Y =< Y2.

% A3 - off_pitch/3 is an invalid location and/or not on the pitch
off_pitch(X,Y,Z) :-
	not(on_pitch(X,Y,Z)).

% A4 - valid_team/1 verifies a team T has 7 players, with the correct position distribution
valid_team(T) :-
	team(T, TeamList),
	length(TeamList, 7),
	findall(P, (player(P,T), chaser(P)), ChaserList),
	length(ChaserList, 3),
	findall(P, (player(P,T), beater(P)), BeaterList),
	length(BeaterList, 2),
	findall(P, (player(P,T), seeker(P)), SeekerList),
	length(SeekerList, 1),
	findall(P, (player(P,T), keeper(P)), KeeperList),
	length(KeeperList, 1).
