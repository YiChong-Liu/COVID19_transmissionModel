
function [r,d]=getData()
[data, ~, ~]=xlsread('.\data\Non-Hubei covid-19.xlsx');

patients = data( : ,2);          %病例数
patients_death = data( : , 4);   %死亡数
patients_recover = data( : ,3 ); %治愈数

[fitresult, ~] = getRe(patients, patients_recover);
% 斜率对应患者康复的概率
r = fitresult.p1

[fitresult2, ~] = getDeathRate(patients, patients_death);
% 斜率对应患者死亡率
d = fitresult2.p1

end





