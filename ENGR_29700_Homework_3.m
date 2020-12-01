%Braxton Phillips
%ENGR 29700
%Homework 3

%1a
u = [15 8 -6];
v = [3 -2 6];

a1 = sum(u.*v)


%1b
u = [15 8 -6];
v = [3; -2; 6];

a2 = u*v

%1c
u = [15 8 -6];
v = [3 -2 6];

a3 = dot(u,v)


%2
A = [1 -3 5; 2 2 4; -2 1 4];

B = [-2 5 0; -3 2 7; -1 6 9];

C = [3 4 6; 2 1 0; 4 2 -3];

%2a
E1a = A+(B+C)
E1b = (A+B)+C

%2b
E2 = A.^2

%2c
E3 = B.*C

%2d
E4 = B.^A

%2e
E5 = mean(C)

%2f
E6 = min(B,[],1)

%3a
AB = A*B

Prob3a = det(AB)
%3b
D1 = inv(A)*B

%3c
D2 = A.^2

%3d
 D3 = B*C
 D4 = C*B
 disp('D3 and D4 are differnt values based on the order in which the multiplicitive operations take place.\n')
 
 %3e
 Prob3e1= transpose(A*B)
 Prob3e2= transpose(A)*transpose(B)
 disp('The results are diffenrent\n')
 
 %4a
 Force = [11 7 8 10 9];
 Springcon = [1000 800 900 1200 700];

 %4b
 compression = Force ./ Springcon
 
 %4c
  PE = ((Springcon).*(compression).^2)/2
  
  %5
fprintf('Value of e^2 is %.5f\n', exp(2))

n = [5, 10, 50];

for i=1:length(n)
nvec = 0:n(i);
vals = (2.^nvec)./factorial(nvec);
total = sum(vals);
fprintf('Value of sum of the series for n=%d is %.5f\n', n(i), total)
end


%Solutions
% ENGR_29700_Homework_3
% 
% a1 =
% 
%     -7
% 
% 
% a2 =
% 
%     -7
% 
% 
% a3 =
% 
%     -7
% 
% 
% E1a =
% 
%      2     6    11
%      1     5    11
%      1     9    10
% 
% 
% E1b =
% 
%      2     6    11
%      1     5    11
%      1     9    10
% 
% 
% E2 =
% 
%      1     9    25
%      4     4    16
%      4     1    16
% 
% 
% E3 =
% 
%     -6    20     0
%     -6     2     0
%     -4    12   -27
% 
% 
% E4 =
% 
%    1.0e+03 *
% 
%    -0.0020    0.0000         0
%     0.0090    0.0040    2.4010
%     0.0010    0.0060    6.5610
% 
% 
% E5 =
% 
%     3.0000    2.3333    1.0000
% 
% 
% E6 =
% 
%     -3     2     0
% 
% 
% AB =
% 
%      2    29    24
%    -14    38    50
%     -3    16    43
% 
% 
% Prob3a =
% 
%        12136
% 
% 
% D1 =
% 
%    -0.4512   -0.9512   -0.9634
%    -0.1951   -0.1951    1.8537
%    -0.4268    1.0732    1.3049
% 
% 
% D2 =
% 
%      1     9    25
%      4     4    16
%      4     1    16
% 
% 
% D3 =
% 
%      4    -3   -12
%     23     4   -39
%     45    20   -33
% 
% 
% D4 =
% 
%    -24    59    82
%     -7    12     7
%    -11     6   -13
% 
% D3 and D4 are differnt values based on the order in which the multiplicitive operations take place.\n
% 
% Prob3e1 =
% 
%      2   -14    -3
%     29    38    16
%     24    50    43
% 
% 
% Prob3e2 =
% 
%      8   -13    -7
%     16    20    24
%     10    21    55
% 
% The results are diffenrent\n
% 
% compression =
% 
%     0.0110    0.0088    0.0089    0.0083    0.0129
% 
% 
% PE =
% 
%     0.0605    0.0306    0.0356    0.0417    0.0579
% 
% Value of e^2 is 7.38906
% Value of sum of the series for n=5 is 7.26667
% Value of sum of the series for n=10 is 7.38899
% Value of sum of the series for n=50 is 7.38906