%分析位点之间两两关系

relation=zeros(1,7445);
for j=1:7445
 relation(1,j)=corr(final(:,2938),final(:,j));
end