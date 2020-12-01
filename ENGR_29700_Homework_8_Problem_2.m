%Homework 8 - Problem 2
%Braxton Phillips
%4/2/2019
clear 
clc

userInput = ('Please enter the value of the radius \n');
r=input(userInput);%holds user radius input
fprintf('\n');

%ch is used to store the choice as a string
userInput = ('Please enter either Area, Volume, or Surface for its respective value. \n');
choiceString = input(userInput, 's'); %stores user choice as a string
fprintf('\n');

%choices operator based on user input
switch choiceString
case 'Area'
outputCalc = pi * (r^2);
fprintf('The area of the circle is %.2f', outputCalc);

case 'Volume'
outputCalc = (4/3) * pi * (r^3);
fprintf('The volume of the sphere is %.2f', outputCalc);
case 'Surface'
outputCalc = 4 * pi * (r^2);

fprintf('The surface area of the sphere is %.2f', outputCalc);

otherwise
fprintf("Invalid character");
end
fprintf('\n\n');


