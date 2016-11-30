%读取logistic回归系数
%读取原始数据列名

c=importdata('C:\Users\Cyq\Desktop\data\genotype.dat','',1);
colname=regexp(c{1,:},' ','split');

w=importdata('C:\Users\Cyq\Desktop\data\a.txt');