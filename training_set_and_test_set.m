%%Randomly generate training set and test set
temp1 = randperm(size(data1,2));%Set random numbers for random training prediction to avoid accidental results.
temp2 = randperm(size(data2,2));
temp3 = randperm(size(data3,2));
temp4 = randperm(size(data4,2));
%%training set
P_train=[data1(1:end-1, temp1(1:ceil(size(data1, 2)*0.7))), data2(1:end-1, temp2(1:ceil(size(data2, 2)*0.7))), ...
           data3(1:end-1, temp3(1:ceil(size(data3, 2)*0.7))), data4(1:end-1, temp4(1:ceil(size(data4, 2)*0.7)))];
T_train=[data1(end, temp1(1:ceil(size(data1, 2)*0.7))), data2(end, temp2(1:ceil(size(data2, 2)*0.7))), ...
           data3(end, temp3(1:ceil(size(data3, 2)*0.7))), data4(end, temp4(1:ceil(size(data4, 2)*0.7)))];
label_test = [data1(end, temp1(ceil(size(data1, 2)*0.7)+1:end)), data2(end, temp2(ceil(size(data2, 2)*0.7)+1:end)), ...
              data3(end, temp3(ceil(size(data3, 2)*0.7)+1:end)), data4(end, temp4(ceil(size(data4, 2)*0.7)+1:end))];
%%test set
P_test=[data1(1:end-1,temp1(ceil (size(data1, 2)*0.7)+1:end)), data2(1:end-1, temp2(ceil (size(data2, 2)*0.7)+1:end)), ...
       data3(1:end-1,temp3 (ceil (size(data3, 2)*0.7)+1:end)),data4(1:end-1, temp4(ceil(size(data4, 2)*0.7)+1:end))];
label_test=[data1(end, temp1(ceil (size(data1,2)*0.7)+1:end)), data2(end, temp2(ceil(size(data2,2)*0.7)+1:end)), ...
            data3(end,temp3(ceil(size(data3, 2)*0.7)+1:end)), data4(end, temp4(ceil(size(data4,2)*0.7)+1:end))];    