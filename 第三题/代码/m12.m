%计算每个基因的重要性度量

importance=zeros(2,300);
importance(1,1:300)=1:300;
for i=1:300
    a=importdata(['C:\Users\Cyq\Desktop\data\rf300\gene_' num2str(i) '.mat']);
    if sum(a>0)~=0
    importance(2,i)=sum(a)/sum(a>0);
    else
        importance(2,i)=0;
    end
end