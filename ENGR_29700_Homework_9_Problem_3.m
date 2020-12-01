%Homework 9 - Problem 3 
%Braxton Phillips
%4/9/19
clc
clear


userRow = input("\nEnter Rows: ");
userColumn = input("\nEnter Columns: ");

P = zeros(userRow,userColumn);     


for r = 1:userRow
    for c = 1:userColumn
        P(r,c) = factorial(r+c-2)/(factorial(r-1)*factorial(c-1));  %equation
    end
end

fprintf("\nPascal Matrix :\n")
disp(P)