% air pollution Case 4 Sensitivity Test - Children's Park plus others

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


% Case 1 Question 2: Using Children's Park data
% changing NO,NO2,O3,temp
T_child = readtable('MOZARTT1_1_child.dat');
time = T_child(:,'time'); time = table2array(time);
O3_child = T_child(:,'O3'); O3_child = table2array(O3_child);
%NO_child = T_child(:,'NO'); NO_child = table2array(NO_child);
%NO2_child= T_child(:,'NO2'); NO2_child = table2array(NO2_child);
%NOx_child = NO_child+NO2_child;
%CO_child = T_child(:,'CO'); CO_child = table2array(CO_child);


% edit conditions for children's park NOx, VOCs (ethane),CH4
% 10% inc NOx, 20% inc for VOC's (hydrocarbons)
T_edit = readtable('MOZARTT1_1_edit.dat');
time = T_edit(:,'time'); time = table2array(time);
O3_edit = T_edit(:,'O3'); O3_edit = table2array(O3_edit);
%NO_child = T_child(:,'NO'); NO_child = table2array(NO_child);
%NO2_child= T_child(:,'NO2'); NO2_child = table2array(NO2_child);
%NOx_child = NO_child+NO2_child;
%CO_child = T_child(:,'CO'); CO_child = table2array(CO_child);


%----------------------------------------------------------------------%
%----------------------------------------------------------------------%

% plot the ozone change
figure(1);
plot(time,O3_1*10^3,'-k',time,O3_child*10^3,'-r',time,O3_edit*10^3,'-g');
ylabel('O3 (ppbv)');
xlabel('time (h)');
title("Case 4 Sensitivity Test: Editing Children's Park Conditions from 7am 12.09.19");
legend('O3 initial',"O3 with Initial Children's Park Conditions",'O3 with increase in NOx and VOC',...
    'Location','Southeast');



