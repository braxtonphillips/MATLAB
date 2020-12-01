% Braxton Phillips
% March 5, 2019
% Homework 7
% Curvefitting
clear
clc

yr  = [1750 1800 1850 1900 1950 1990 2000 2009];
pop = [791 980 1260 1650 2520 5270 6060 6800];

%PART A
p1 = polyfit(yr, pop, 2);
p2 = polyfit(yr, pop, 3);
a = polyval(p1, yr);
b = polyval(p2, yr);

%Quadtratic and Cubic functions
subplot(2,1,1)
plot(yr, pop, 'o', yr, a, '--k', yr, b, '.-g')
xlabel('Year')
ylabel('Population (millions)')
title('Population vs Year (Quadratic & Cubic)')
legend('Data Points','Quadratic Polynomial','Cubic Polynomial','Location','northwest')
axis([1750 2010 0 7000]);
grid on

%PART B 
t = [1750:2:2009]; %evaluates at time every 2 years
ip1 = interp1(yr,pop,t,'linear');
ip2 = pchip(yr, pop,t);

%Graph for interoplated and pchip vals
subplot(2,1,2)
plot(yr, pop,'o', t, ip1, '.-b', t, ip2, '-m')
xlabel('Year')
ylabel('Population (millions)')
title('Population vs Year (Interpolated & Pchip)')
legend('Data Points','Interpolated Curve', 'Pchip Curve','Location','northwest')
axis([1750 2010 0 7000]);
grid on

%PART C
%Gets estimated population value from functions at year 1930
epop1 = polyval(p1,1930);
epop2 = pchip(yr,pop,1930);
epop3 = interp1(yr,pop,1930);

fprintf('The estimated population(millions) using the Quadtratic function at year 1930 is %.2f.\n', epop1)
fprintf('The estimated population(millions) using Pchip Interpolation at year 1930 is %.2f.\n', epop2)
fprintf('The estimated population(millions) using Linear Interoplation at year 1930 is %.2f.\n', epop3)

% The estimated population using the Quadtratic function at year 1930 is 2652.47.
% The estimated population using Pchip Interpolation at year 1930 is 2061.00.
% The estimated population using Linear Interoplation at year 1930 is 2172.00.