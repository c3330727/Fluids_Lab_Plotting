close all
clear all
clc

data = readtable('0015_20 Experimental Data graphs.xlsx','Range','A1:T100');
noRead = [1,2,3,4,5,7,8,11,12,13,14];
data(:, noRead) = [];
dataArray = table2array(data);

c=1;
for i = 1:3:99
L3 = [dataArray(i,2) dataArray((i+1),2) dataArray((i+2),2)];
Ave3L= mean(L3);
AveL(c) = Ave3L;
STD3L= std(L3);
STDL(c) = STD3L;

%Drag force
D3 = [dataArray(i,3) dataArray(i+1,3) dataArray(i+2,3)];
Ave3D= mean(D3);
AveD(c) = Ave3D;
STD3D= std(D3);
STDD(c) = STD3D;

c=c+1;
end


alpha = dataArray(:,1) ;
CL = dataArray(:,8);
CD = dataArray(:,6);
% CLCD = dataArray(:,9);
CLCD = CL./CD;
CDi = dataArray(:,7);

figure (1), plot(alpha,CL)
title('CL vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CL')
grid on
grid minor

figure (2), plot(alpha,CD)
title('CD vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CD')
grid on
grid minor

figure (3), plot(alpha,CLCD)
title('CL/CD vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CL/CD')
grid on
grid minor

figure (4), plot(alpha,CDi)
title('CDi vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CDi')
grid on
grid minor