% Assignment 4: Isometric sttength analysis
% this code will analyze an isometric strengt data set
% Written by J.W. Barrett


%This code will first import a csv file contaning strength data. next the
%code will analyze the data by calculating the means of each subject and
%comparing the imporvments they made over the 3 days.
%Code will then export the results as a csv file 
%Data will be analyzed using the following functions
            %importfile.m
            %genderIsoCalc.m
            %dayComparer.m
%Tested using Matlab version R2023a
%Tested on Windows 10
%Last update:10/29/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Use importfile function to import csv file and save each column as a
%vector 
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3]= importfile("isok_data_6803.csv", [2, Inf]);

%Use GenderIsoCalc function to get both male and female mean isokenetic
%valuesfrom each day and male and female group means for all 3 days 
[maleIsoIndMeans,femaleIsoIndMeans,maleIsoGroupMeans,femaleIsoGroupMeans]=genderIsoCalc(Gender,Day1,Day2,Day3);

%Use sayComparer to get the Subject IDs of the subject who made improvments
%between days 1 & 2 and days 2 & 3 and store them in variables day1toDay2
%and day2toDay3.
[day1toDay2]=dayComparer(SubjectID,Day1,Day2);
[day2toDay3]=dayComparer(SubjectID,Day2,Day3);

%returns average weight and isokenetic data for each day and normilizes it
%based on average weight and stores data in variables
%normDay1mean,normDay2mean,and normDay3mean
avgWeight=mean(Weight);
avgDay1=mean(Day1);
avgDay2=mean(Day2);
avgDay3=mean(Day3);
normDay1mean=(avgDay1/avgWeight);
normDay2mean=(avgDay2/avgWeight);
normDay3mean=(avgDay3/avgWeight);
% Makes a table possible for the final result by making all the variables all the same length 
maleIsoIndMeans(25,1)=0;
maleGroupIsoMeans(25,1)=0;
femaleIsoIndMeans(25,1)=0;
femaleGroupIsoMeans(25,1)=0;
day1toDay2(25,1)=0;
day2toDay3(25,1)=0;
normDay1mean(25,1)=0;
normDay2mean(25,1)=0;
normDay3mean(25,1)=0;

%Export file
results=table(maleIsoIndMeans,maleGroupIsoMeans,femaleIsoIndMeans,femaleGroupIsoMeans,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);
writetable(results,'iso_results_.csv')