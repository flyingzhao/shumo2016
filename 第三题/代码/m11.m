%计算每个基因的位点重要程度
c=importdata('C:\Users\Cyq\Desktop\data\genotype.dat','',1);
colname=regexp(c{1,:},' ','split');

count=1;

for i=1:300
    a=importdata(['C:\Users\Cyq\Desktop\data\gene_info\gene_' num2str(i) '.dat']);
    [m n]=size(a);
    b=zeros(1,n);
    for j=count:count+m-1
        c=find(cell2mat(maxweight(:,1))==j);
        if c>0
            b(1,j-count+1)=cell2mat(maxweight(c,2));
        else
            b(1,j-count+1)=0;
        end
    end
    
    save(['C:\Users\Cyq\Desktop\data\rf300\gene_' num2str(i) '.mat'],'b');
    count=count+m;
end