% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A sudoku (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
#const n=4.

sudoku(X,Y,N) :- initial(X, Y, N).
% Achieved - input of the initial cells


{sudoku(X, Y, 1..n)} = 1 :- X=1..n, Y=1..n. 
:- sudoku(X, Y, N), sudoku(X', Y, N'), N = N', X != X'.
:- sudoku(X, Y, N), sudoku(X, Y', N'), N = N', Y != Y'.
% Achieved value N is neither in the same row or column 

#show sudoku/3.
