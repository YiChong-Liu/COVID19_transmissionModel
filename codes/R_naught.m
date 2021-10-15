
clear;clc;
%[data, ~, ~]=xlsread('.\data\Hubei covid-19.xlsx');

%由韩国病例数计算基本再生数R0
[data, ~,~]=xlsread('.\data\SouthKorea covid-19.xlsx');

date= 1:1:82;       %初始日期为2月19日
                    %由于韩国疫情爆发晚于中国，且在较长时间内都稳定小幅增长
                    %选取前82天作为计算周期               
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



