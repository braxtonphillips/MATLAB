%Homework 9 - Problem 2 
%Braxton Phillips
%4/9/19
clc
clear

userInput = input('Enter an a degree value for an angle ');

x = (userInput*pi/180);
y = sind(userInput);

fprintf('sin(x) in Degree=%.10d\n\n',y)
    count=0;
    z=1;
    
for n=0:11
    count = count + 1;
      terms(count) = (-1)^(n)*(x^(2*n+1))/factorial(2*n+1);
      tSine = sum(terms);
      E = abs((sin(x) - tSine)/sin(x))
      if(E<=0.000001)
          break;
      end

end
fprintf('\n\n')
fprintf('Taylors series value of sin(x) is %.10d \n',tSine)