% clc
% clear
%  play ='y'; 
%  while(play == 'y')
% P = input('enter the number fo which the cube root is to be estimated\n');%scans for user input => P gets input
% xNew = P;%xNew gets the value of P E =1;%E gets -1
% while(E>=0.00001)% while -1 is greater or equal to 0.00001 run the loop, start of while loop     x
%     Old = xNew;%x old get x new value
%     xNew = (P/(xOld^2) +  2*xOld)/3;%xNew now gets a new value
%     E= abs((xNew-xOld)/xOld);%E in a way is incremented/ changes its value and then comapred in the while loop 
% end%end of while loop
% fprintf('the estimate for the cube root is %.8f\n',xNew)%//prints the calculated the cube root with one method
% fprintf('using the function nthroot, the value is %.8f\n',nthroot(P,3))%//prints the calculated the cube root with one method
% play = input('enter y to run the program again and enter n to stop the program\n','s'); 
% end 

clear
clc

contCode ='y';
while(contCode == 'y')
P = input('Enter the number for which the cube root is to be estimated. \n'); %prompts user for input and stores in P
xNew = P; %xNew gets the value of P 
E =1;%E gets -1
while(E>= 0.00001) %beginning of while loop and says while E is greater than or equal to .00001, run loop     
    xOld = xNew; %xOld gets and stores xNew value
    xNew = (P/(xOld^2) + 2*xOld)/3; %xNew gets an updated value
    E = abs((xNew-xOld)/xOld); %E is evaluated in comparison to rest of the loop and updated if necessary
end %end of while loop
fprintf('The estimate for the cube root is %.8f\n',xNew) %prints the estimate of the cube root
fprintf('Using the function nthroot, the value is %.8f\n',nthroot(P,3)) %prints the value using nthroot function
contCode = input('Enter *y* to run the program again or enter *n* to stop the program. \n\n','s');
end 
