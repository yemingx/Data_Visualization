ko465<-read.table('targeted_sig_gene_list_465', header = F)
tko<-read.table('targeted_sig_gene_list_tko', header = F)
xw<-read.table('targeted_sig_gene_list_xw', header = F)
xr<-read.table('targeted_sig_gene_list_xr', header = F)

library(gplots)
svg('venn_targeted_sig.svg')
venn(list(ko465=ko465,tko=tko,xw=xw,xr=xr))
dev.off()

list1<-Reduce(intersect,list(ko465$V1,tko$V1,xw$V1,xr$V1))
write.table(list1,'intersect_gene_id',quote = FALSE,col.names = FALSE,row.names = FALSE)
