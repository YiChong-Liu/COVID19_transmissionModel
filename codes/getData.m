
function [r,d]=getData()
[data, ~, ~]=xlsread('.\data\Non-Hubei covid-19.xlsx');

patients = data( : ,2);          %������
patients_death = data( : , 4);   %������
patients_recover = data( : ,3 ); %������

[fitresult, ~] = getRe(patients, patients_recover);
% б�ʶ�Ӧ���߿����ĸ���
r = fitresult.p1

[fitresult2, ~] = getDeathRate(patients, patients_death);
% б�ʶ�Ӧ����������
d = fitresult2.p1

end





