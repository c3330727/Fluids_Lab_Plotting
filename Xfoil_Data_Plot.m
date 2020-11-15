close all
clear all
clc

data = readtable('0015_20 Xfoil Data graphs.xlsx','Range','B4:J36');
noRead = [5,6,7];
data(:, noRead) = [];
dataArray = table2array(data);


alpha = dataArray(:,1) ;
alpha = -1*alpha;
CL = dataArray(:,2);
CL = -1*CL;
CD = dataArray(:,3);
CLCD = dataArray(:,5);
CLCD = -1*CLCD;
CDi = dataArray(:,6);

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
