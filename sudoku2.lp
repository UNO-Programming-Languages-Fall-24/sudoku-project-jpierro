% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A sudoku (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
% Input size for the size of the subgrid which is being solved for. 
% IE: a 9x9 grid would have an input of 3.
#const g=3.

% set grid size equal to g^2.
n=g*g.

sudoku(X,Y,N) :- initial(X, Y, N).
% Achieved - input of the initial cells

% 1A
{sudoku(X, Y, 1..n)} = 1 :- X=1..n, Y=1..n. 
:- sudoku(X, Y, N), sudoku(X', Y, N'), N = N', X != X'.
:- sudoku(X, Y, N), sudoku(X, Y', N'), N = N', Y != Y'.
% Achieved value N is neither in the same row or column 

% 1B
subgrid(X, Y, G) :- X=1..n, Y=1..n, G = 1 + (((X - 1) / g) * g + ((Y - 1) / g)).
% Achieved creating subgrid

% 1C
:- subgrid(X, Y, G), subgrid(X', Y', G), sudoku(X, Y, N), sudoku(X', Y', N), (X, Y) != (X', Y').
% Achieved value N is not repeated in the same subgrid, along with the other sudoku rules.

% 2
% updated g to be 3 which then updates all other cases. 
% This ensures when passing the const=g, the whole program will update to meet the new constraints.
% Achieved a generic sudoku puzzel solver

#show sudoku/3.
%#show subgrid/3.

