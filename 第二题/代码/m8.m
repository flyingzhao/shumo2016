%寻找相关性最大的几个值
%寻找相关性最小的几个值
%列号 相关性 名称 权重

m=20;

w0=cor;
cor0=w;

maxcor=cell(m,4);

for i=1:m

[a b]=max(w0);
maxcor{i,1}=b;
maxcor{i,2}=a;

maxcor{i,3}=colname(1,b);
w0(1,b)=0;
maxcor{i,4}=cor0(1,b);

end

mincor=cell(m,3);

for i=1:m

[a b]=min(w0);
mincor{i,1}=b;
mincor{i,2}=a;

mincor{i,3}=colname(1,b);
w0(1,b)=0;
mincor{i,4}=cor0(1,b);

end