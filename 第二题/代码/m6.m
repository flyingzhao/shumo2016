%计算相关性
%使用pearson相关度
cor=zeros(1,9445);
for j=1:9445
    cor(1,j)=corr(final(:,j),label);
end
