add(0,1,_).
add(N,F,X) :-
	X is N+F.

sub(0,1,_).
sub(N,F,X) :-
	X is N-F.

mult(0,1,_).
mult(N,F,X) :-
	X is N*F.

div(0,1,_).
div(N,F,X) :-
    F>0,
	X is N/F.

logbN(1,_,0).
logbN(N,B,X):-
    N > 1,
    N1 is N/B,
    logbN(N1, B, A),
    X is A + 1.

factorial(0,1). 
factorial(N,F) :-  
   N>0, 
   N1 is N-1, 
   factorial(N1,F1), 
   F is N * F1.

% Input = ?- factorial(#,N). 
% N is 6+3. 

power(_,0,1).
power(X,Y,V):-
	Y > 0,
	Y1 is Y - 1,
	power(X,Y1,Z),
	V is Z*X,!.
% power(#,#,N).
% # to the power #, return results with N 
