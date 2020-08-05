###Desarrollo Preguntas FOR - LOOP

##Sintesis Enunciado
#El sitema judicial tiene un sistema que clasifica los documentos
#por categorias, con el objetivo de ordenarlos de manera eficiente,
#a continuación la siguiente lista representa medidas de protección
#y oficios con solicitudes.


listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))



print(listaDocumentos)
###Ejercicio 1
##Las mp tienen los nombres de las personas a las cuales están asociadas,
##realice una función que cuente cuántos niños hay por cada una, y entregue 
##una estadística de cuántos niños hay por mp.

##Receta: queremos obtener cuantos niños estan con medidas de protección (mp)
#y para eso ocuparemos la lista "listaDocumentos".

length(listaDocumentos)
niños <- 0

mp <- 0


for(MedPro in listaDocumentos){
  if(MedPro[1]=="mp"){
   mp <- mp+1
   niños <- niños+(length(MedPro)-1)
                                
}
}
    


print(paste("se cuentan con",mp,"mp de",niños,"niños")) 

##Ejercicio 2: 
#Los oficios están compuestos por el código al cual pertenecen, construya 
#una función que almacene los códigos y las temáticas a las que están asociados.

##Receta:
#Queremos obtener los oficios asociados a los códigos y temáticas de la lista 
#"listaDocumentos".
av01<-c()
av02<-c()
av03<-c()
av04<-c()
av05<-c()
av07<-c()
av08<-c()

for (CodAsoc in listaDocumentos) {
  if(CodAsoc[1]=="of"){
    if(CodAsoc[2]=="av01"){
      av01<-c(CodAsoc[3],av01)
    }
    if(CodAsoc[2]=="av02"){
      av02<-c(CodAsoc[3],av02)
    }
    if(CodAsoc[2]=="av03"){
      av03<-c(CodAsoc[3],av03)
    }
    if(CodAsoc[2]=="av04"){
      av04<-c(CodAsoc[3],av04)
    }
    if(CodAsoc[2]=="av05"){
      av05<-c(CodAsoc[3],av05)
    }
    if(CodAsoc[2]=="av07"){
      av07<-c(CodAsoc[3],av07)
    }
    if(CodAsoc[2]=="av08"){
      av08<-c(CodAsoc[3],av08)
    }
  }
}

print(CodAsoc)

of <- 0
Aprobadas <- 0
Reprobadas <- 0


for(temas in listaDocumentos){
  if(temas[1]=="of"){
    of <- of+1
  if(temas[3]=="meca"||temas[3]=="ante"){
    Aprobadas <- Aprobadas+1
  } else if(temas[3]=="dape"||temas[3]=="arme"||temas[3]=="ampr"){
    Reprobadas <- Reprobadas+1
  }
    
}
  
}  

print(paste("Legaron",of,"oficios de los cuales:",Aprobadas,"son aprobados y",Reprobadas,"son reprobadas"))  
  
  
  
  
  
  

  
  

