%��ȡ���ɭ��importance��ֵ

count=1;
weight=zeros(300,9445);
for i=0:299
    
    a=importdata(['C:\Users\Cyq\Desktop\data\rf\' num2str(i) '.txt']);
    weight(i+1,:)=a';
end
rfweight=sum(weight);