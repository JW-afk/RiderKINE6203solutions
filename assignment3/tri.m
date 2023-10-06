function [trueFalse] = tri(triArray)
%returnes if a triange is valid or not using a 3 element array aray is
%sorted from smallest to largest so order doesnt matter when entering
%numbers. 
upTriArray=sort(triArray);
upTriArray(1)+upTriArray(2);
if(upTriArray(1)+upTriArray(2))<upTriArray(3)
    trueFalse=true;
else 
    trueFalse=false;
end
end