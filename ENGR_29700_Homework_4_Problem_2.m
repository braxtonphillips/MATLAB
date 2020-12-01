% ENGR_29700_Homework_4_Problem_2
% Braxton Phillips
% Feb. 5, 2019

%2
A = [-cosd(45) 0 0 1 0 0 0 0 0; -sind(45) 0 -1 0 0 0 0 0 0; 0 -1 0 0 sind(45) 1 0 0 0;
    0 0 0 -1 -cosd(48.81) 0 0 1 0; 0 0 0 0 0 0 0 0 -sind(48.81); 0 0 0 0 0 0 0 -1 -cosd(48.81);
     0 0 0 0 0 0 1 0 sind(48.81);  0 0 0 0 0 -1 0 0 cosd(48.81);];
B = [0 0 0 0 600 1800 0 4800 0]';
F = (A.^(-1))*B;
fprintf('The 9 forces are:\n')
T = table(F);

 