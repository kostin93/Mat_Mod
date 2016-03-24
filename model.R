eddypro=read.csv("eddypro.csv", skip=1)[-1,c(1:69,70:77)]
eddypro=eddypro[ ,c(-32,-33,-37,-38,-63)]
eddypro=subset(eddypro, as.Date(date) >=as.Date("2013-06-01") & as.Date(date) <= as.Date("2013-06-31") & daytime == T)
eddypro[eddypro$daytime=="T",]->eddypro
eddypro$daytime=as.double(eddypro$daytime)
for(i in c(4,6:length(eddypro))){
eddypro[ ,i]=as.numeric(eddypro[ ,i])
}
eddypro[eddypro==-9999.0]=NA
cor.matrix=round(cor(eddypro[c(-1,-2,-3,-4)]),2)
model1=lm(x_90.~(x_offset+model+x_10.)^3, data=eddypro)
anova(model1)
model2=lm(x_90.~(x_offset+model+x_10.)^3 - x_offset:model - x_offset:model:x_10., data=eddypro)
anova(model2)
