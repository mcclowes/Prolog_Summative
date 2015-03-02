% partA
% A1 - player/2, where P is a player on team Team
player(P, Team) :-
	team(Team, TeamList),
	member(P, TeamList)
	team(T2, TeamList2).

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
	length(KeeperList, 1),
	write('here').

	% Need to check whether a team has a player that is on another team?


%% Q:> In C3, should update_score give the additional score gained at the current
%% > game configuration or should it update a running total? If the latter,
%% > should this running total be stored in a separate file?
%% A:
%% It should return S1 and S2 as the running total "based on either a
%% goal being scored by either team or when the snitch (ball) has been caught by the correct player from one of the
%% teams." by adding the appropriate score to those available from score/2 - e.g.

%% score(gryffindor,60).
%% score(ravenclaw,10)

%% Q:> Firstly, for testing the valid_team/1  predicate (A4), to test it thoroughly
%% > and to make sure it does not throw false positives it would be necessary to
%% > define teams which don't satisfy the requirements of being valid, however
%% > such a team can't be define as the predicates team/2, chaser/1, beater/1,
%% > seeker/1, and keeper/1 are defined in the base.pl file so can't be asserted
%% > in the game.pl file to produce a test team. Testing like this would be
%% > possible if these predicates were declared as dynamic at the top of the
%% > base.pl file, otherwise I shall just leave comments indicating the tests
%% > which would be done if possible in the game.pl file.
%% A: 
%% You can always define a different team for example ? (using perhaps Durham college names ?)
%% This should be possible by creating further examples of each in the game.pl file.
%% Use commenting in/out to test - yes. We could make them dynamic but this is not covered until later
%% in the lecture so is not in the assignment.