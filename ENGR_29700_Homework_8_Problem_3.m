%Homework 8 - Problem 3 
%Braxton Phillips
%4/2/2019

clear 
clc

test1 = input('Enter the test score for the first test \n');
test2 = input('Enter the test score for the second test \n');
test3 = input('Enter the test score for the third test \n');

%takes averages of various test scores
average1 = (test1+test2+test3)/3;
average2 = (test2+test3)/2;

%num2cell converts arrays to cellular arrays
%holds bounds of grade vaules in a simpiler format
switch average1
case num2cell(90:100)
grade = 'A';
case num2cell(91:100)
grade = 'A';
case num2cell(70:89)
switch test3
case num2cell(0:90)
grade = 'B';

end
case num2cell(50:69)
switch average2
case num2cell(0:70)
garde = 'D';
case num2cell(71:100)
grade = 'C';
end
case num2cell(0:49)
grade = 'F';
end

fprintf("The grade is " + grade);