mcs_data_unit_1 = xlsread('mcs_data_1.xlsx','UNIT 1');
mcs_data_unit_2 = xlsread('mcs_data_1.xlsx','UNIT 2');
mcs_data_unit_3 = xlsread('mcs_data_1.xlsx','UNIT 3');
mcs_data_unit_4 = xlsread('mcs_data_1.xlsx','UNIT 4');
mcs_data_unit_5 = xlsread('mcs_data_1.xlsx','UNIT 5');
mcs_data_unit_6 = xlsread('mcs_data_1.xlsx','UNIT 6');

unit = input("Enter unit: ", "s");
[c1,c2,c3,m] = UNIT_AVERAGE(unit);

disp(c1);
disp(c2);
disp(c3);
disp(m);

function [C1,C2,C3,M] = UNIT_AVERAGE(x)
  % This function takes the sheet as input file and computes the average 
  % for cat one, cat 2, cat 3 and the main exam.
  
  % GET THE SIZE OF THE DATA
  data_size = x(size(x,1));
  % GET THE DATA OF CAT 1
   cat1_data = x(1:size(x,1),1);
   % CALLCULATE THE AVERAGE 
   C1 = sum(cat1_data)/data_size;
   disp(cat1_data);
   
   cat2_data = x(1:size(x,1),2);
   C2 = sum(cat2_data)/data_size;
   
   cat3_data = x(1:size(x,1),3);
   C3 = sum(cat3_data)/data_size;
   
   main_data = x(1:size(x,1),4);
   M = sum(main_data)/data_size;
end






