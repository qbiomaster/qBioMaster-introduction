library("igraph")
genfile<-read.csv("../TemplateOrganismsFiles/B_s_168_regulations.csv")
genfile<-genfile[,c("TF_altLocusTag","TG_altLocusTag")]
names(genfile)<-c("Origine","Destination")
genfile$Origine<-as.character(genfile$Origine)
genfile$Destination<-as.character(genfile$Destination)
listnodes<-unique(c(genfile$Origine,genfile$Destination))
traducteur<-data.frame("Node"=listnodes)
traducteur$id<-row.names(traducteur)
names(traducteur)<-c("Origine","id_or")
genfile2<-merge(genfile,traducteur, by="Origine",all.y=FALSE)
names(traducteur)<-c("Destination","id_dest")
genfile2<-merge(genfile2,traducteur, by="Destination",all.y=FALSE)
genfile2<-genfile2[,c("id_or","id_dest")]
names(genfile2)<-c("Origine","Destination")
write.csv(genfile2,"../1_Data/Network_6.csv",row.names = FALSE)
##################################
movfile<-read.csv("../TemplateOrganismsFiles/ODmatrix.csv")
movfile<-movfile[,c("Origine","Destination","Nb")]
movfile$Origine<-as.character(movfile$Origine)
movfile$Destination<-as.character(movfile$Destination)
movfile$Nb<-as.numeric(as.character(movfile$Nb))
movfile<-aggregate(Nb~Origine+Destination,data=movfile,FUN = sum)

listnodes<-unique(c(movfile$Origine,movfile$Destination))
traducteur<-data.frame("Node"=listnodes)
traducteur$id<-row.names(traducteur)
names(traducteur)<-c("Origine","id_or")
movfile2<-merge(movfile,traducteur, by="Origine",all.y=FALSE)
names(traducteur)<-c("Destination","id_dest")
movfile2<-merge(movfile2,traducteur, by="Destination",all.y=FALSE)
movfile2<-movfile2[,c("id_or","id_dest","Nb")]
names(movfile2)<-c("Origine","Destination","Weight")
write.csv(movfile2,"../1_Data/Network_3.csv",row.names = FALSE)
###########################################@
