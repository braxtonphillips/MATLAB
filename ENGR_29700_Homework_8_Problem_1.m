%Homework 8 - Problem 1
%Braxton Phillips
%4/2/2019
%1.  Consider problem 6 on the attached photocopy from a previous edition of the text. 
%    Enter the temperatures for Chicago and San Francisco for the month of August, 2009.   
clc
clear

%a)
TCH=[75 79 86 86 79 81 73 89 91 86 81 82 86 88 89 90 82 84 81 79 73 69 73 79 82 72 66 71 69 66 66];
TSF=[69 68 70 73 72 71 69 76 85 87 74 84 76 68 79 75 68 68 73 72 79 68 68 69 71 70 89 95 90 66 69];

k=0;
for a=1:31
if TCH(a)>64 && TCH(a)<76 && TSF(a)>64 && TSF(a)<76
k=k+1;
end
end
fprintf('The temperature was between 65 and 75 degrees for %d days\n',k)

%b)
fprintf('The temperature in San Francisco was higher than the temperature in Chicago for these days:\n')
for b=1:31
if TSF(b)>TCH(b) %evaluates of San Fran temps are grater than Chicago temps
b
end
end
