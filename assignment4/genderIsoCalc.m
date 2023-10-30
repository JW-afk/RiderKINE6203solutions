function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMeans,femaleGroupIsoMeans] = genderIsoCalc(Gender, Day1, Day2, Day3)
% Returns the isometric strength value means for each day 
% of lifting as well as the group isometric strength for each group  
%tested on windows 10
%last updated 10/29/23
average= (Day1+Day2+Day3)/3;
for i=1:length(Gender)
    if (Gender(i)=="M")
        MeanM(i)=average(i);
    end
    if (Gender(i)=="F")
        MeanF(i)=average(i);
    end
end

    %Returns the nonzero elements of the array for the mean of individual Male
    %subjects
    maleIsoIndMeans=nonzeros(MeanM);
    %returns the nonzero elements of the array for the mean of individual female
    %subjects
    femaleIsoIndMeans=nonzeros(MeanF);
    % Returns the mean of all days for each group
    maleGroupIsoMeans=mean(maleIsoIndMeans);
    femaleGroupIsoMeans=mean(femaleIsoIndMeans);
end

