function [timeOut] = counter(num1,num2)
%Takes 2 inputs and displays a counter from the lower number to the higer
while num1<num2
   fprintf('%d\n',num1)
    num1=num1+1;
   
end
fprintf('%d\n',num2)
end