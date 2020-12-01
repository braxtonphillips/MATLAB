%BRaxton PHillips
%Homework 5
clc
clear

testMat = load('hw5.txt');
fileID = fopen('Homework5op', 'w')
studentNum = testMat(:,1);
testVals = testMat(:,2:4);

testAvg = mean(testVals');
fprintf('The average test values for the student is %.2f \n', testAvg)
fprintf('\n\n')

allAvg1 = mean(testVals(:,1));
allAvg2 = mean(testVals(:,2));
allAvg3 = mean(testVals(:,3));
fprintf('The average score for the first test is %.2f\n', allAvg1)
fprintf('The average score for the second test is %.2f\n', allAvg2)
fprintf('The average score for the third test is %.2f\n', allAvg3)
fprintf('\n\n')

highTest1 = max(testVals(:,1));
highTest2 = max(testVals(:,2));
highTest3 = max(testVals(:,3));
fprintf('The highest score for the first test is %.2f\n', highTest1)
fprintf('The highest score for the second test is %.2f\n', highTest2)
fprintf('The highest score for the third test is %.2f\n', highTest3)
fprintf('\n\n')

lowTest1 = min(testVals(:,1));
lowTest2 = min(testVals(:,2));
lowTest3 = min(testVals(:,3));
fprintf('The lowest score for the first test is %.2f\n', lowTest1)
fprintf('The lowest score for the second test is %.2f\n', lowTest2)
fprintf('The lowest score for the third test is %.2f\n', lowTest3)
fprintf('\n\n')

medTest1 = median(testVals(:,1));
medTest2 = median(testVals(:,2));
medTest3 = median(testVals(:,3));

fprintf('The median score for the first test is %.2f\n', medTest1)
fprintf('The median score for the second test is %.2f\n', medTest2)
fprintf('The median score for the third test is %.2f\n', medTest3)



