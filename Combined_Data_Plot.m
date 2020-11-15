%Combined polts

close all
clear all
clc

%Reading Xfoil excel file
Xdata = readtable('0015_20 Xfoil Data graphs.xlsx','Range','B4:J36');
XnoRead = [5,6,7];
Xdata(:, XnoRead) = [];
XdataArray = table2array(Xdata);

%Reading experimental excel file
Edata = readtable('0015_20 Experimental Data graphs.xlsx','Range','A1:T100');
EnoRead = [1,2,3,4,5,7,8,11,12,13,14];
Edata(:, EnoRead) = [];
EdataArray = table2array(Edata);

%Xfoil variables
Xalpha = XdataArray(:,1);
Xalpha = -1*Xalpha;
XCL = XdataArray(:,2);
XCL = -1*XCL;
XCD = XdataArray(:,3);
XCLCD = -1*XdataArray(:,5);
% XCLCD = XCL./XCD;
XCDi = XdataArray(:,6);

%Experimental variables
Ealpha = EdataArray(:,1) ;
ECL = EdataArray(:,8);
ECD = EdataArray(:,6);
% ECLCD = EdataArray(:,9);
ECLCD = ECL./ECD;
ECDi = EdataArray(:,7);


figure (1), plot(Xalpha,XCL,'DisplayName','Xfoil CL')
title('Combined CL vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CL')
grid on
grid minor
hold on
plot(Ealpha,ECL,'DisplayName','Experimental CL')
legend
hold off

figure (2), plot(Xalpha,XCD,'DisplayName','Xfoil CD')
title('Combined CD vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CD')
grid on
grid minor
hold on
plot(Ealpha,ECD,'DisplayName','Experimental CD')
legend
hold off

figure (3), plot(Xalpha,XCLCD,'DisplayName','Xfoil CL/CD')
title('Combined CL/CD vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CL/CD')
grid on
grid minor
hold on
plot(Ealpha,ECLCD,'DisplayName','Experimental CL/CD')
legend
hold off

figure (4), plot(Xalpha,XCDi,'DisplayName','Xfoil CDi')
title('CDi vs Alpha')
xlabel('Alpha [degrees°]')
ylabel('CDi')
grid on
grid minor
hold on
plot(Ealpha,ECDi,'DisplayName','Experimental CDi')
legend
hold off
