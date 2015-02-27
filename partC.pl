% partC
% C1.Define a predicate hits(B,P) that holds if and only if a player whom is a beater, 
% B, hits another player, P, (with their club) - here assuming that they automatically 
% hit any player who comes within a 1 metre radius of their position.
hits(B,P) :-
	B == beater,
	player(B, X1,Y1,Z1),
	player(B,T),
	player(P, X2,Y2,Z2),
	player(P,T2),
	T \= T2,
	% As radius is defined 1m (not variable) and dealing with integers...
	((X1==X2, Y1==Y2, abs(Z1-Z2)==1);
	(X1==X2, abs(Y1-Y2)==1, Z1==Z2);
	(abs(X1-X2)==1, Y1==Y2, Z1==Z2)).

% C2.Define a predicate end_of_game(T1,T2) for a game between teams T1 and T2 that holds 
% if and only if the snitch (ball) has been caught by the correct player from one of the 
% teams whilst no player from either team was committing a foul and the formations of 
% both teams are valid..
end_of_game(T1, T2) :-
	(snitch_caught(T1); snitch_caught(T2)),
	(not(foul(T1)), not(foul(T2))),
	(valid_team(T1), valid_team(T2)).

% C3.Define a predicate update_score(T1, S1, T2, S2) that updates the scores (S1 and/or S2) 
% based on either a goal being scored by either team or when the snitch (ball) has been 
% caught by the correct player from one of the teams. In quidditch - “Each goal scored 
% is worth ten points. .... Capturing the Snitch earns the Seeker's team 150 points”
update_score(T,S) :-
	(goal_scored(T), score(T, (S+10)));
	(snitch_caught(T), score(T, (S+150)));

update_score(T1, S1, T2, S2) :-
	update_score(T1,S1);
	update_score(T2,S2).

% Again in order to test part C you will need to define a number of game configurations 
% using player/4 and ball/4 (for player and ball positions). Add these test examples 
% (and results) into your separate prolog file game.pl such that you can comment in 
% and out different game configurations for testing. Clearly comment the tests that apply to Part C.

