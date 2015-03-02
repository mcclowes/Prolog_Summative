% partC
% C1 - hits/2 checks for beaters hitting other players
hits(B,P) :-
	beater(B),
	player(B, X1,Y1,Z1),
	player(P, X2,Y2,Z2),
	P \= B, % Player is not hitting self
	XD = X2-X1,
	YD = Y2-Y1,
	ZD = Z2-Z1,
	sqrt(XD*XD + YD*YD + ZD*ZD) =< 1.

% C2 - end_of_game/2 checks whether a game between two valid teams has ended
end_of_game(T1, T2) :-
	(snitch_caught(T1); snitch_caught(T2)), % The snitch has been caught
	not(foul(T1)), not(foul(T2)), % No one is fouling
	valid_team(T1), valid_team(T2), T1 \= T2. % Two valid teams

% C3 - update_score/2 checks if team T has scored with the snitch and/or quaffle, returning new score
update_score(T,S) :-
	not(foul(T)),
	score(T,X),
	write(T),write('\'s score is '),write(X),nl,
	((goal_scored(T), snitch_caught(T), S is X+160),!; %If snitch caught whilst goal scored
	(goal_scored(T), S is X+10); % If goal scored ONLY
	(snitch_caught(T), S is X+150)), % If snitch caught ONLY
	write(T),write('\'s score is now '),write(S),nl.

% update_score/4 checks whether either team T1 or T2's scores have increased using update_score/2
update_score(T1, S1, T2, S2) :-
	update_score(T1,S1);
	update_score(T2,S2).
