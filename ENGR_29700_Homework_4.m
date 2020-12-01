% ENGR_29700_Homework_4
% Braxton Phillips
% Feb. 5, 2019
% 1a
prob1a = randi([-10 10], 8,2)
%1b
prob1b = sort(prob1a,'ascend')
%1c
prob1c = (10-(-10))*rand(1,8) + 10;
fprintf('1c\n')
fprintf('   %.3f\n', prob1c)
%1d
fprintf('1d\n')
meanVal = mean(prob1c)
meadianVal = median(prob1c)
%1e
prob1e = prod(prob1c);
fprintf('The prodcut is %.4e \n', prob1c)
%1f
[m,p] = max(prob1c);
fprintf('\nThe maximum number is %.2f and the postion is %.0f\n', m,p)