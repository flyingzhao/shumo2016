%��ȡgene_info�Ļ������ݣ��������������ݽ��б���

f=final;

c=importdata('C:\Users\Cyq\Desktop\data\genotype.dat','',1);
colname=regexp(c{1,:},' ','split');
count=1;
for i=1:300
    
    a=importdata(['C:\Users\Cyq\Desktop\data\gene_info\gene_' num2str(i) '.dat']);
    [m n]=size(a);
    b=final(:,count:count+m-1);
    save(['C:\Users\Cyq\Desktop\data\300\gene_' num2str(i) '.mat'],'b');
    count=count+m;
end