function [txtOut] = wooHah(Num1,Num2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
value1=Num1+Num2;
if (rem(value1,2)==0)
    txtOut='woo';
else 
    txtOut='Hah';
end