%寻找权重最大的几个值
%寻找权重最小的几个值
%列号 权重 名称 相关度
m=9445;

w0=rfweight;

mweight=cell(m,5);

c=importdata('C:\Users\Cyq\Desktop\data\genotype.dat','',1);
colname=regexp(c{1,:},' ','split');
for i=1:m

[a b]=max(w0);
mweight{i,1}=b;
mweight{i,2}=a;

mweight{i,3}=colname(1,b);
w0(1,b)=0;
mweight{i,4}=cor(1,b);
mweight{i,5}=abs(cor(1,b));

end

% minweig=cell(m,4);
% 
% for i=1:m
% 
% [a b]=min(w0);
% minweig{i,1}=b;
% minweig{i,2}=a;
% 
% minweig{i,3}=colname(1,b);
% w0(1,b)=0;
% minweig{i,4}=cor(1,b);
% 
% end