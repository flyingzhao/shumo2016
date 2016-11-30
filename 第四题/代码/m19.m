%寻找两个低维空间中前100个位点中的共同部分
colindex=[maxweight{:,1} ;maxweight{:,4}]'
for i=1:100
    a=find(colindex(:,1)==colindex(i,2));
    if ~isempty(a)
        i
        a
    end
end