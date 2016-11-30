%按照位点频率进行012编码
r=result;

final=zeros(1000,9445);

for j=1:2
    
dict=struct();
for i=1:1000
    if isfield(dict,r{i,j})
        dict.(r{i,j})=dict.(r{i,j})+1;
    else
        dict.(r{i,j})=1;
    end
end

newdict=struct();
names=fieldnames(dict);

maxnum=max([dict.(names{1}) dict.(names{2}) dict.(names{3})]);
minnum=min([dict.(names{1}) dict.(names{2}) dict.(names{3})]);

for n=1:3
    if dict.(names{n})==maxnum
        newdict.(names{n})=0;
    end
    if dict.(names{n})==minnum
        newdict.(names{n})=2;
    end
    if ((dict.(names{n})~=minnum) && (dict.(names{n})~=maxnum))  
        newdict.(names{n})=1;
    end
end

for i=1:1000
    final(i,j)=newdict.(r{i,j});
end

end

% save('C:\Users\Cyq\Desktop\data\convert.mat','final')
    
