%Ѱ��������ά�ռ���ǰ100��λ���еĹ�ͬ����
colindex=[maxweight{:,1} ;maxweight{:,4}]'
for i=1:100
    a=find(colindex(:,1)==colindex(i,2));
    if ~isempty(a)
        i
        a
    end
end