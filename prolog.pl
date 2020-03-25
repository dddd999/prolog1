{\rtf1\ansi\ansicpg1252\cocoartf2511
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
add(0,1,X).\
add(N,F,X) :-\
	X is N+F.\
\
sub(0,1,X).\
sub(N,F,X) :-\
	X is N-F.\
\
mult(0,1,X).\
mult(N,F,X) :-\
	X is N*F.\
\
div(0,1,X).\
div(N,F,X) :-\
    F>0,\
	X is N/F.\
\
logbN(1,_,0).\
logbN(N,B,Ans):-\
    N > 1,\
    N1 is N/B,\
    logbN(N1, B, A),\
    Ans is A + 1.\
\
factorial(0,1). \
factorial(N,F) :-  \
   N>0, \
   N1 is N-1, \
   factorial(N1,F1), \
   F is N * F1.\
\
% Input = ?- factorial(#,N). \
\'97 \
% N is 6+3. 
\f1 \cf2 \cb3 \expnd0\expndtw0\kerning0
\

\f0 \cf0 \cb1 \kerning1\expnd0\expndtw0 \'97 \
\
power(X,0,1).\
power(X,Y,V):-\
	Y > 0,\
	Y1 is Y - 1,\
	power(X,Y1,Z),\
	V is Z*X,!.\
% power(#,#,N).\
% # to the power #, return results with N \
\'97 \
}