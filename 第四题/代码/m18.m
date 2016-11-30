%计算相关性并排名
n=2;
cor=zeros(2,9445);
for i=1:n
for j=1:9445
    cor(i,j)=corr(final(:,j),y(:,i));
end
end

cor=abs(cor);

m=100;

w0=cor;

maxweight=cell(m,6);


for j=1:n
    wei=cell(m,3);
for i=1:m
    [a b]=max(cor(j,:));
    wei{i,1}=b;
    wei{i,2}=colname{1,b};
    wei{i,3}=a;
    cor(j,b)=0;


end
maxweight(:,3*j-2:3*j)=wei;
end
