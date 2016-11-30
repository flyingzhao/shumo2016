%计算相关性
%使用pearson相关度
cor=zeros(10,9445);
for i=1:10
for j=1:9445
    cor(i,j)=corr(final(:,j),multilabel(:,i));
end
end