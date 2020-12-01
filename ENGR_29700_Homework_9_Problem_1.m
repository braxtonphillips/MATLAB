%Homework 9 - Problem 1 
%Braxton Phillips
%4/9/19
% In a script file, use the random number generator to create and print a vector of 12 integer values between 20 and 100.  
% Use either a for loop or the find function to determine values in the vector which are evenly divisible by 3 and their positions in the vector. 
%(The rem function will be helpful in this problem.)  Print the values and their positions in a table.
clc
clear

% Generate 12 random numbers between 20 to 100
r = randi([20 100],1,12);

disp(r)


for i=1:12

    if(mod(r(i),3)==0) %if divisible by 3, 

    fprintf('\nRanodm number divisible by 3 is %d and the position is %d.\n',r(i)',(i));


    end

end
