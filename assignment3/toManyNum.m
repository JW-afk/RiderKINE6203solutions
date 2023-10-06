function [sum,diff,prod,mx] = toManyNum(num1,num2)
%takes two in puts and returns the sum diffrence product and max of the
%numbers. 
sum=num1+num2;
diff=num1-num2;
prod=num1*num2;
mx= max(num1,num2);
end