%读取原始位点数据
M=importdata('C:\Users\Cyq\Desktop\data\genotype.dat')
a=M(2:1001);
b=cell2mat(a);

result=cell(1000,9445);

for i=1:1000
    c=regexp(b(i,:),' ','split');
    result(i,:)=c;
end

%save('C:\Users\Cyq\Desktop\data\1.mat','result');
    
    
    
    
    
