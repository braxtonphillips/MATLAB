%{
Oscar Aca, Logan, Braxton 

Application

projectile motion: 3-d plots,numerical integration and finding maxium  of
function
%}
clc
clear

subplot(2,2,1)
time = [0 1 2 3 4 5];
speed = [10 12 14 16 18 20];% this will be used for ploting the speed vs time graph


%this part of the code graphs velocity vs time. we then calculate the area
%under the curve using integration trapz

plot(time, speed, '-')
xlabel('time, (seconds)');
ylabel('speed (m/s)');
title('Velocity vs time graph for a soccer  ball')
grid
axis([0,6,5,25])% sets the bounds of what is displayed, range of max/ min of x/y
displacement = trapz(time,speed); % this command does integration of the area under the curve. area under velocity vs time is distance
fprintf('the area under the curve is %.4f which is distance \n',displacement);

%the code below prints a sphere
fprintf('the soccer ball that was kicked appeared as follows\n')
subplot(2,2,2)% prints the plot in the seond row


[x y z] = sphere;%s
a=[3 3 3 3];
%{
For matirx a =[]
Where the first column of the matrix represents the x – coordinate, the second column
represents the y – coordinate, the third column represents the z – coordinate and the
fourth column will represent the radius of the sphere.
%}
s1=surf(x*a(1,4)+a(1,1),y*a(1,4)+a(1,2),z*a(1,4)+a(1,3));
%{
where s1 is the variable assigned to sphere 1, x, y and z are the variables x, y and z, a(1,4)
represents the number in matrix ‘a’ in row 1 and column 4 and denotes the radius of the
sphere. a(1,1) represents the number in row 1 and column1 of matrix ‘a’ and is the xcoordinate of the center of the sphere. 
%}
daspect([5 5 5])
%{
daspect([ 1 1 1]) changes the scale on each axis to 1 and view(30,10) twists the view
around the z-axis. 
%}
view(30,10)
title('soccer ball');

%pages 324 to 334
%these are the bottom two 3d graphs second row
%3d plot demos
%{
Mesh plots are created in three steps. The first step is to create a grid
in the x y plane that covers the domain of the function.
the second step is to calculate the value at z at each point of grid. The
thid step is to create the plot

%}
 subplot(2,2,3)
X = -4 : 0.25 : 4;% this is the x domain
Y = -4 : 0.25 : 4;% this is the y domain
[X,Y] = meshgrid(x,y);%[X} is the matrix of the x coordinates of the grid points
% use page 326 
Z = 6.3 .^(-1.5*sqrt(X.^2+Y.^2)).* (tanh(0.5*Y)) .*sinh(X).^2;% equation that is plotted
mesh(X,Y,Z)% The mesh plot is made of lines that connect the points.
xlabel( 'x');ylabel('y');zlabel('z'); 
 title('mesh plot');
%plots surf plot and compare to mesh side by side
 
subplot(2,2,4)
X = -4 : 0.25 : 4;% the domain of x
Y = -4 : 0.25 : 4;%the domain of y
[X,Y] = meshgrid(x,y);%use page 326
Z = 6.3 .^(-1.5*sqrt(X.^2+Y.^2)).* (tanh(0.5*Y) ) .*sinh(X).^3;
contour(X,Y,Z,15)%this make a contouor map of the above 3d mesh plot
xlabel( 'x');ylabel('y');zlabel('z'); 
 title('contour plot');


