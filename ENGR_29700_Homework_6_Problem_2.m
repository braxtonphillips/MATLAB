% HW 6 Problem 2
% Braxton Phillips
% 7658601907
% Feb. 26, 2019
clear
clc

E = [0:.001:.01];
incT = [0 3500 6300 9200 11500 13000 13500 13900 14100 14300 14500];
decT = [0 0 3000 6000 8800 11100 12300 13500 14000 14300 14500];

plot(E, incT,'-m', E, decT, '-r')
xlabel('Elongation, \epsilon, (inches)')
ylabel('Tension Force, \sigma, (lbf)')
legend('Increasing Tension Force','Decreasing Tension Force','Location','southeast')
title('Tension Test on a Steel Bar - Tension vs Elongation')
grid on

gtext('Increasing Tension Force')
gtext('Decreasing Tension Force')