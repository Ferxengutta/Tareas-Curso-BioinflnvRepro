## Este script inicia el archivo maizteocintle_SNP50k_meta_extended.txt

fullmat<- read.delim("..\\meta\\maizteocintle_SNP5Ok_meta_extended.txt").

# Conocer tipo de objeto.
class(fullmat)

# primer linea del archivo
head(fullmat)

# número de muestras
nrow(fullmat)

# muestreo por estado
length(levels(fullmat$Estado))

# muestras recolectadas antes de 1980
sum(fullmat$A.o._de_colecta<1980, na.rm = TRUE)

# muestras por raza
table(fullmat$Raza)

# promedio de cada raza
mean(fullmat$Altitud)

# Altitud máxima y mínima
range(fullmat$Altitud)

#crear una df con solo los datos de las muestras de raza: Olotillo
Olotillo<-subset(fullmat, raza == "Olotillo")

#crear una df con solo los datos de las muestras de raza: Reventador, Jala Y Ancho
ancho<-subset(fullmat, raza == "ancho")
jala<-subset(fullmat, raza == "jala")
Reventador<-subset(fullmat, raza == "Reventador")
submat<-rbind(ancho,jala,Reventador)

# crear un archivo llamado submat.csv en /meta
write.cvs(submat,'../meta/submat.csv')




