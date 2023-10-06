function [stringOut] = stringLength(string1)
%tkaes a string as an input and returns the length of the string as well as
%the first and last charecter
stringOut=strlength(string1);
fprintf('%d\n',stringOut);
convertStringsToChars(string1);
disp(string1(1))
disp(string1(end))
end