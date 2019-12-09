% air pollution case 3 sensitivity test
clear all

% initial values
T_1 = readtable('MOZARTT1_3.dat');
time = T_1(:,'time'); time = table2array(time);
O3_1 = T_1(:,'O3'); O3_1 = table2array(O3_1);
OH_1 = T_1(:,'OH'); OH_1 = table2array(OH_1);
NO2_1= T_1(:,'NO2'); NO2_1 = table2array(NO2_1);
CH2O_1 = T_1(:,'CH2O'); CH2O_1 = table2array(CH2O_1);
H2O2_1 = T_1(:,'H2O2'); H2O2_1 = table2array(H2O2_1);

% --- Photolysis rates:---
% inc values of 1) NO2 and 2) H2O2

% NO2 inc
T_2 = readtable('MOZARTT1_3_NO2.dat');
O3_2 = T_2(:,'O3'); O3_2 = table2array(O3_2);
OH_2 = T_2(:,'OH'); OH_2 = table2array(OH_2);
%NO2_1= T_1(:,'NO2'); NO2_1 = table2array(NO2_1);
%CH2O_1 = T_1(:,'CH2O'); CH2O_1 = table2array(CH2O_1);
%H2O2_1 = T_1(:,'H2O2'); H2O2_1 = table2array(H2O2_1);

% H2O2 inc
T_4 = readtable('MOZARTT1_3_H2O2.dat');
O3_4 = T_4(:,'O3'); O3_4 = table2array(O3_4);
OH_4 = T_4(:,'OH'); OH_4 = table2array(OH_4);
%NO2_1= T_1(:,'NO2'); NO2_1 = table2array(NO2_1);
%CH2O_1 = T_1(:,'CH2O'); CH2O_1 = table2array(CH2O_1);
%H2O2_1 = T_1(:,'H2O2'); H2O2_1 = table2array(H2O2_1);


% --- initial conditions: ---
% inc values of 1) CH2O 2) NO and NO2
T_5 = readtable('MOZARTT1_3_IC_CH2O.dat');
O3_5 = T_5(:,'O3'); O3_5 = table2array(O3_5);
OH_5 = T_5(:,'OH'); OH_5 = table2array(OH_5);

T_6 = readtable('MOZARTT1_3_IC_NOx.dat');
O3_6 = T_6(:,'O3'); O3_6 = table2array(O3_6);
OH_6 = T_6(:,'OH'); OH_6 = table2array(OH_6);


% --- Environment: ---
% inc temp from 295K to 500K
T_7 = readtable('MOZARTT1_3_temp.dat');
O3_7 = T_7(:,'O3'); O3_7 = table2array(O3_7);
OH_7 = T_7(:,'OH'); OH_7 = table2array(OH_7);


%----------------------------------------------------------------------%
% plot the case 3 values:
clf;
% plot 1
figure(1);
yyaxis left; hold on;
plot(time,O3_1*10^3,'-k',time,O3_2*10^3,'--k',time,O3_4*10^3,':k'); 
ylabel('O3 (ppbv)');
yyaxis right;
plot(time,OH_1*10^6,'-g',time,OH_2*10^6,'--g',time,OH_4*10^6,':g'); 
ylabel('OH (ppbt)');
xlabel('time (h)');
title('Case 3 Sensitivity Test: Photolysis Rates');
legend('O3 initial','O3 with NO2 inc','O3 with H2O2 inc',...
    'OH initial','OH with NO2 inc','OH with H2O2 inc','Location','Southeast');
hold off;


% plot 2
figure(2);
title('Case 3 Sensitivity Test: Initial Conditions');
yyaxis left; hold on;
plot(time,O3_1*10^3,'-k',time,O3_5*10^3,'--k',time,O3_6*10^3,':k'); 
ylabel('O3 (ppbv)');
yyaxis right;
plot(time,OH_1*10^6,'-g',time,OH_5*10^6,'--g',time,OH_6*10^6,':g'); 
ylabel('OH (ppbt)');
xlabel('time (h)');
title('Case 3 Sensitivity Test: Initial Conditions');
legend('O3 initial','O3 with CH2O inc','O3 with NOx inc',...
    'OH initial','OH with CH2O inc','OH with NOx inc','Location','Southeast');
hold off;


% plot 3
figure(3);
title('Case 3 Sensitivity Test: Environmental Temperature');
yyaxis left; hold on;
plot(time,O3_1*10^3,'-k',time,O3_7*10^3,'--k'); 
ylabel('O3 (ppbv)');
yyaxis right;
plot(time,OH_1*10^6,'-g',time,OH_7*10^6,'--g'); 
ylabel('OH (ppbt)');
xlabel('time (h)');
title('Case 3 Sensitivity Test: Environmental Temp');
legend('O3 initial for 295K','O3 for 500K',...
    'OH initial for 295K','OH for 500K','Location','Northwest');
hold off;


