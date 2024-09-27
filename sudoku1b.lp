% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A sudoku (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
%subgrid size,
#const g=2.

%Grid size n**n, which .
#const n=g*g.



sudoku(X,Y,N) :- initial(X, Y, N).
% Achieved - input of the initial cells

% 1A
{sudoku(X, Y, 1..n)} = 1 :- X=1..n, Y=1..n. 
:- sudoku(X, Y, N), sudoku(X', Y, N'), N = N', X != X'.
:- sudoku(X, Y, N), sudoku(X, Y', N'), N = N', Y != Y'.
% Achieved value N is neither in the same row or column 

% 1B
subgrid_size(g).subgrid(X, Y, G) :- X=1..n, Y=1..n, G = 1 + (((X - 1) / g) * g + ((Y - 1) / g)).
%cell(X, Y) :- sudoku(X, Y, _).
%Achieved creating subgrid




#show sudoku/3.
#show subgrid/3.
%#show cell/2.
