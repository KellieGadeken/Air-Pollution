% air pollution case 1 sensitivity test

clear all;
clf;

% initial values
T_1 = readtable('MOZARTT1_1.dat');
time = T_1(:,'time'); time = table2array(time);
O3_1 = T_1(:,'O3'); O3_1 = table2array(O3_1);
NO_1 = T_1(:,'NO'); NO_1 = table2array(NO_1);
NO2_1= T_1(:,'NO2'); NO2_1 = table2array(NO2_1);
NOx_1 = NO_1+NO2_1;
CO_1 = T_1(:,'CO'); CO_1 = table2array(CO_1);

% NO inc
T_2 = readtable('MOZARTT1_1_NO.dat');
O3_2 = T_2(:,'O3'); O3_2 = table2array(O3_2);
NO_2 = T_2(:,'NO'); NO_2 = table2array(NO_2);
NO2_2= T_2(:,'NO2'); NO2_2 = table2array(NO2_2);
NOx_2 = NO_2+NO2_2;
CO_2 = T_1(:,'CO'); CO_2 = table2array(CO_2);


% NO2 inc
T_3 = readtable('MOZARTT1_1_NO2.dat');
O3_3 = T_3(:,'O3'); O3_3 = table2array(O3_3);
NO_3 = T_3(:,'NO'); NO_3 = table2array(NO_3);
NO2_3= T_3(:,'NO2'); NO2_3 = table2array(NO2_3);
NOx_3 = NO_3+NO2_3;
CO_3 = T_3(:,'CO'); CO_3 = table2array(CO_3);


% NOx inc
T_4 = readtable('MOZARTT1_1_NOx.dat');
O3_4 = T_4(:,'O3'); O3_4 = table2array(O3_4);
NO_4 = T_4(:,'NO'); NO_4 = table2array(NO_4);
NO2_4= T_4(:,'NO2'); NO2_4 = table2array(NO2_4);
NOx_4 = NO_4+NO2_4;
CO_4 = T_4(:,'CO'); CO_4 = table2array(CO_4);


% CO inc
T_5 = readtable('MOZARTT1_1_CO.dat');
O3_5 = T_5(:,'O3'); O3_5 = table2array(O3_5);
NO_5 = T_5(:,'NO'); NO_5 = table2array(NO_5);
NO2_5= T_5(:,'NO2'); NO2_5 = table2array(NO2_5);
NOx_5 = NO_5+NO2_5;
CO_5 = T_5(:,'CO'); CO_5 = table2array(CO_5);




%----------------------------------------------------------------------%
% plot the case 1 values:

clf;
figure(1);
%yyaxis left; hold on
plot(time,O3_1*10^3,time,O3_4*10^3,time,O3_5*10^3);
%plot(time,O3_3*10^3); 
%plot(time,O3_2*10^3); 

%ax = gca;
%ax.ColorOrder = [1 0.5 0; 0.5 0 1; 0 0.5 0.3; 1 0 0; 0 0 1];
%ax.LineStyleOrder = {'-','-','-','--',':'};
ylabel('O3 (ppbv)');
%yyaxis right;
%plot(time,NOx_1,'-g',time,CO_1,'-r',time,NOx_2); 
%ylabel('others (ppbv)');
xlabel('time (h)');
title('Case 1 Sensitivity Test');
legend('O3 initial','O3 with NOx inc','O3 with CO inc'); %,'O3 with NO inc','O3 with NO2 inc');
hold off;


%----------------------------------------------------------------------%
%----------------------------------------------------------------------%

% Case 1 Question 2: Using Children's Park data
% changing NO,NO2,O3,temp
T_child = readtable('MOZARTT1_1_child.dat');
time = T_child(:,'time'); time = table2array(time);
O3_child = T_child(:,'O3'); O3_child = table2array(O3_child);
%NO_child = T_child(:,'NO'); NO_child = table2array(NO_child);
%NO2_child= T_child(:,'NO2'); NO2_child = table2array(NO2_child);
%NOx_child = NO_child+NO2_child;
%CO_child = T_child(:,'CO'); CO_child = table2array(CO_child);

% plot the ozone change
figure(2);
plot(time,O3_1*10^3,'-k',time,O3_child*10^3,'-r');
ylabel('O3 (ppbv)');
xlabel('time (h)');
title("Case 1 Sensitivity Test: Children's Park Conditions from 7am 12.09.19");
legend('O3 initial',"O3 with Children's Park Conditions",'Location','Southeast');



