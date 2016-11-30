%正式版本，根据纯合子杂合子进行编码
r=result;

final=zeros(1000,9445);

for j=1:9445

dict=struct();
for i=1:1000
    if isfield(dict,r{i,j})
        dict.(r{i,j})=dict.(r{i,j})+1;
    else
        dict.(r{i,j})=1;
    end
end

names=fieldnames(dict);

newdict=struct();
for n=1:3
    if isfield(newdict,names{n}(1))
        newdict.(names{n}(1))=newdict.(names{n}(1))+dict.(names{n});
    else
        newdict.(names{n}(1))=dict.(names{n});
    end
    if isfield(newdict,names{n}(2))
        newdict.(names{n}(2))=newdict.(names{n}(2))+dict.(names{n});
    else
        newdict.(names{n}(2))=dict.(names{n});
    end
end


newdictnames=fieldnames(newdict);
maxnum=max([newdict.(newdictnames{1}) newdict.(newdictnames{2})]);
minnum=min([newdict.(newdictnames{1}) newdict.(newdictnames{2})]);

lastdict=struct();

for k=1:2
    if newdict.(newdictnames{k})==maxnum
        lastdict.([newdictnames{k} newdictnames{k}])=0;
    end
    if newdict.(newdictnames{k})==minnum
        lastdict.([newdictnames{k} newdictnames{k}])=2;
    end 
end

for i=1:1000
    if isfield(lastdict,r{i,j})
        final(i,j)=lastdict.(r{i,j});
    else
        final(i,j)=1;
    end
end

end

save('C:\Users\Cyq\Desktop\data\convert2.mat','final')


