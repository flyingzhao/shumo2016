%����10����״֮��������
r=zeros(10,10);
for i=1:10
    for j=1:10
        r(i,j)=corr(multilabel(:,i),multilabel(:,j));
    end
end