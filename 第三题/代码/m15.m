%Ѱ��Ȩ�����ļ���ֵ
%Ѱ��Ȩ����С�ļ���ֵ
%�к� Ȩ�� ���� ��ض�
m=100;

w0=rfweight;

maxweight=cell(m,50);


for j=1:10
    wei=cell(m,5);
for i=1:m

[a b]=max(w0(j,:));
wei{i,1}=b;
wei{i,2}=a;

wei{i,3}=colname(1,b);
w0(j,b)=0;
wei{i,4}=cor(1,b);
wei{i,5}=abs(cor(1,b));

end
maxweight(:,5*j-4:5*j)=wei;
end