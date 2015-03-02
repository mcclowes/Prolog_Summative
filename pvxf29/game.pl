% game.pl

% ['///Users/reoscar/Google Drive/2) 2nd Year/2) Programming Paradigms/0) Prolog Summative/base.pl'].

%% % Part A test cases
%% % To test part A predicates, change base.pl so that Teams contain the wrong number 
%% % of players or the wrong distribution of positions, etc
%% % Invalid position tests below
%% % Part A Ball positions
%% ball(bludger, 40,-30,50).
%% ball(bludger, 50,50,50).
%% ball(quaffle, -27,150,15). % Part B2 - Goal scored
%% ball(snitch, -20,-20,-20). % Part B1
%% % Gryffindor
%% player(oliver, 10.5,10.5,10.5).
%% player(katie, 25,25,-25).
%% player(angelina, 27,-150,10).
%% player(alicia, 10,20,31).
%% player(fred, -50,-50,50).
%% player(george, 35,35,35).
%% player(harry, 20,20,20).
%% % Ravenclaw
%% player(roger, 25,35,45).
%% player(randolph, 15,25,35).
%% player(jeremy, 5,15,25).
%% player(jason, 10,20,30).
%% player(duncan, 40,30,50).
%% player(grant, 20,10,5).
%% player(cho, 40,42,44).

% Part B Tests case (Uncomment to create part B game state)
% Part B Ball positions
%% ball(bludger, 40,30,50).
%% ball(bludger, 50,50,50).
%% ball(quaffle, 27,150,15). % Part B2 - Goal scored
%% ball(snitch, 20,20,20). % Part B1 - Snitch caught
%% % Part B Griffindor players
%% player(oliver, 10,10,10).
%% player(katie, 25,25,25).
%% player(angelina, 27,150,10).
%% % player(angelina, 27,150,15). % B3 - Replace for player holding quaffle while scoring -> Foul
%% player(alicia, 10,20,31).
%% player(fred, 50,50,50).
%% player(george, 35,35,35).
%% % player(george, 20,20,20). % B3 - None seeker has caught snitch -> Foul
%% player(harry, 20,20,20). % Part B1 - Snitch caught
%% % Ravenclaw
%% player(roger, 25,35,45).
%% player(randolph, 15,25,35).
%% % player(randolph, -15,25,35). % B3 - Replace for Player in invalid position -> Foul
%% player(jeremy, 5,15,25).
%% player(jason, 10,20,30).
%% player(duncan, 40,30,50).
%% %player(duncan, 40,30,50). % B3 - Player collision with Fred -> Foul
%% player(grant, 20,10,5).
%% player(cho, 40,42,44). % Part B1 - Does not have snitch (Ravenclaw haven't caught the snitch)

%% % Part C Test Cases
%% % Part C Ball positions
%% ball(bludger, 40,30,50).
%% ball(bludger, 50,50,50).
%% ball(quaffle, 27,150,15). % Goal scored -> update score +10
%% ball(snitch, 20,20,20).
%% % Griffindor players - valid_position(P, X,Y,Z):- player(P, _), location(X,Y,Z).
%% player(oliver, 10.5,10.5,10.5).
%% player(katie, 25,25,25).
%% player(angelina, 27,150,10).
%% player(alicia, 10,20,31).
%% player(fred, 50,50,50).
%% player(george, 35,35,35).
%% player(harry, 20,20,20). % Snitch caught - game ended and update score +150
%% % Ravenclaw
%% player(roger, 25,35,45).
%% player(randolph, 15,25,35).
%% player(jeremy, 5,15,25).
%% player(jason, 10,20,30). % C1 - Hits alicia, C2 - end game, foul stops game ending
%% player(duncan, 40,30,50).
%% player(grant, 20,10,5).
%% player(cho, 40,42,44).