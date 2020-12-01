% HW 6 Plotting
% Braxton Phillips
% 7658601907
% Feb. 26, 2019
clear
clc

t = [0:.1:1.3];
v = 7;
g = 9.81;
%Pot at 35 degrees
A1 = 35;
h1 = v.*t.*sind(A1)-(1/2).*g.*t.^2;
%Pot at 45 degrees
A2 = 45;

h2 = v.*t.*sind(A2)-(1/2).*g.*t.^2;

%Pot at 60 degrees
A3 = 60;
h3 = v.*t.*sind(A3)-(1/2).*g.*t.^2;

%Plotting
figure
plot(t, h1, '--k', t, h2, ':g', t, h3, '-c')
title('The height of a ball thrown at an angle A')
xlabel('Time, seconds')
ylabel('Height, meters')
legend('Angle = 35','Angle = 45','Angle = 60');
grid on
axis([0 1.3 0 2]) %restrics deminsions of graph
%gtext allows placement of text whereever cursor is placed
gtext('Braxton Phillips')
