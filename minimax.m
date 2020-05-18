%{
Write a function called minimax that takes M, a matrix input argument and returns mmr, a row vector containing the absolute values of the difference between the maximum and minimum valued elements in each row. As a second output argument called mmm, it provides the difference between the maximum and minimum element in the entire matrix. See the code below for an example: 
>> A = randi(100,3,4) %EXAMPLE
A =
    66    94    75    18
     4    68    40    71
    85    76    66     4
>> [x, y] = minimax(A)
x =
    76    67    81
y =
    90
%}

%CODE
function [mmr, mmm]= minimax(M)
mmr=max(M')-min(M');
mmm=[max(M(:))-min(M(:))];
end
%{
OUTPUT
[mmr, mmm] = minimax([1:4;5:8;9:12])

mmr =

     3     3     3


mmm =

    11

%}
