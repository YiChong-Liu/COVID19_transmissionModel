
clear;clc;
%[data, ~, ~]=xlsread('.\data\Hubei covid-19.xlsx');

%�ɺ����������������������R0
[data, ~,~]=xlsread('.\data\SouthKorea covid-19.xlsx');

date= 1:1:82;       %��ʼ����Ϊ2��19��
                    %���ں������鱬�������й������ڽϳ�ʱ���ڶ��ȶ�С������
                    %ѡȡǰ82����Ϊ��������               
initial_patient = data(1,2)  
R0 = zeros(1,82);
for i=1:82
    patient = data(i,2)
    period = 20/5.1;
    syms r;
    r = vpasolve( (r.^(period+1)-1)/(r-1)== double(patient/initial_patient),r )
    R0(i) = r;
end

plot(date,R0);
xlabel('date');
ylabel('R0');



