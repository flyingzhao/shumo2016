%读取10个rf参数
rfweight=zeros(10,9445);
count=1;
weight=zeros(300,9445);
for j=1:10
for i=0:299
    
    a=importdata(['C:\Users\Cyq\Desktop\data\multilabel\' num2str(j) '\' num2str(i) '.txt']);
    weight(i+1,:)=a';
end
rfweight(j,:)=sum(weight);
end
