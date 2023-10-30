function [DaytoDay] = dayComparer(SubjectID, DayA, DayB)
%User needs to specify which subject from each gender they are looking to
%comapre days for by useing subject id and then selecting which days and
%returns the subject IDs of those that had improvments 
for i=1:length(SubjectID)
    if (DayB(i)>DayA(i))
        DaytoDay(i)=SubjectID(i);
    end
end