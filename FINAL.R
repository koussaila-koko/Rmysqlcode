#age_years X-Ray visits
#duration X-Ray visits

######The ward first procedure######
#gender 
#department
#duration_days
#first_procedure_difference
#entry_group


##The visit details table######
#entry_group
#patient


######The physical details table######
#age_years
#outcome

######  ######
#
#
#
#
#
#
#
#
#
#entry_day???
#ED_dur_hours
#hospitalization_dur_days






#### AGE ET NBR DE VISITS ###
library(RMySQL)

con=dbConnect(MySQL(),user='root',dbname='rambam',host='localhost')
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1'")
data.frame=fetch(rq)
r<-data.frame
print(r)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1' AND
age_years<13")
data.frame=fetch(rq)
r13<-(data.frame*100)/r
print(r13)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1' AND
age_years>=13 AND age_years<22")
data.frame=fetch(rq)
r22<-(data.frame*100)/r
print(r22)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1' AND
age_years>=22 AND age_years<35")
data.frame=fetch(rq)
r35<-(data.frame*100)/r
print(r35)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1' AND
age_years>=35 AND age_years<47")
data.frame=fetch(rq)
r47<-(data.frame*100)/r
print(r47)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1' AND
age_years>=47 AND age_years<60")
data.frame=fetch(rq)
r60<-(data.frame*100)/r
print(r60)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1' AND
age_years>=60 AND age_years<100")
data.frame=fetch(rq)
r100<-(data.frame*100)/r
print(r100)
H<-c(1,2,4,5,6,7)
print(H)
M<-c("0-12","13-21","22-34","34-46","47-59","60-100")
pie(H,M)

barplot(table(H))

on.exit(dbDisconnect(con))
##############################################"
con=dbConnect(MySQL(),user='root',dbname='rambam',host='localhost')
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits ")
data.frame=fetch(rq)
r<-data.frame
print(r)
a=r
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1'")
data.frame=fetch(rq)
r11<-(data.frame*100)/r
print(r11)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='2'")
data.frame=fetch(rq)
r12<-(data.frame*100)/r
print(r12)

H<-c(1,2)
print(H)
M<-c("Emergency Room","Hospital")
pie(H,M,main="Titre principal",sub="2004_2007")
on.exit(dbDisconnect(con))
###########################################################


con=dbConnect(MySQL(),user='root',dbname='rambam2007',host='localhost')
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits ")
data.frame=fetch(rq)
r<-data.frame
print(r)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1'")
data.frame=fetch(rq)
r11<-(data.frame*100)/r
print(r11)
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='2'")
data.frame=fetch(rq)
r12<-(data.frame*100)/r
print(r12)
b1=r
H<-c(1,2)
print(H)
M<-c("Emergency Room","Hospital")
pie(H,M,main="Titre principal",sub="2007")
on.exit(dbDisconnect(con))
###########################################################

      
      con=dbConnect(MySQL(),user='root',dbname='rambam2006',host='localhost')
      rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits ")
      data.frame=fetch(rq)
      r<-data.frame
      print(r)
      b2=r
      rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1'")
      data.frame=fetch(rq)
      r11<-(data.frame*100)/r
      print(r11)
      rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='2'")
      data.frame=fetch(rq)
      r12<-(data.frame*100)/r
      print(r12)
      
      H<-c(1,2)
      print(H)
      M<-c("Emergency Room","Hospital")
      pie(H,M,main="Titre principal",sub="2006") 
      on.exit(dbDisconnect(con))
      ###########################################################
            
            con=dbConnect(MySQL(),user='root',dbname='rambam2005',host='localhost')
            rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits ")
            data.frame=fetch(rq)
            r<-data.frame
            print(r)
            b3=r
            rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1'")
            data.frame=fetch(rq)
            r11<-(data.frame*100)/r
            print(r11)
            rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='2'")
            data.frame=fetch(rq)
            r12<-(data.frame*100)/r
            print(r12)
                  
            
            
            
            
            
            H<-c(1,2)
            print(H)
            M<-c("Emergency Room","Hospital")
            col <- brewer.pal(3,"Pastel2")
            pie(H,M,main="Titre principal",sub="2005",col=col)
            
            
            
           
            
            ###########################################################                  
                  con=dbConnect(MySQL(),user='root',dbname='rambam2004',host='localhost')
                  rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits ")
                  data.frame=fetch(rq)
                  r<-data.frame
                  print(r)
                  b4=r
                  rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='1'")
                  data.frame=fetch(rq)
                  r11<-(data.frame*100)/r
                  print(r11)
                  rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='2'")
                  data.frame=fetch(rq)
                  r12<-(data.frame*100)/r
                  print(r12)
                  

H<-c(1,2)
print(H)
M<-c("Emergency Room","Hospital")
pie(H,M,main="Titre principal",sub="2004",col.sub="red",cex.main=2, cex=1.7, cex.sub=1.2)
######commentaire ne fonction pas
rq=dbSendQuery(con,"SELECT COUNT(*) FROM visits WHERE entry_group='2'")
data.frame=fetch(rq)
bb<-b1*100)/b
print(bb1)
bb<-b2*100)/b
print(bb2)
bb<-b3*100)/b
print(bb3)
bb4<-b4*100)/b
print(bb4)

H<-c(1,2,3,4)
M<-c("7","6","5","4")
Pie(H2,M2)
###########################################################


# Installer la bibliothèque ggplot2
install.packages("ggplot2")

# Charger la bibliothèque ggplot2
library(ggplot2)

###########################################################
library(RMySQL)

con=dbConnect(MySQL(),user='root',dbname='rambam',host='localhost')
rq=dbSendQuery(con,"SELECT * FROM visits")
data.frame=fetch(rq)
r<-data.frame
#age et urgence 
# Charger la bibliothèque ggplot2
library(ggplot2)

# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$first_ward)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par first_ward") +
  xlab ("first_ward") +
  ylab ("Nombre patiens")
# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$age_years)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par age_years") +
  xlab ("age_years") +
  ylab ("Nombre patiens")
# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$first_ward)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par first_ward") +
  xlab ("first_ward") +
  ylab ("Nombre patiens")
# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$exit_unit)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par exit_unit") +
  xlab ("exit_unit") +
  ylab ("Nombre patiens")


# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$entry_unit)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par entry_unit") +
  xlab ("entry_unit") +
  ylab ("Nombre patiens")

# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$exit_group)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par exit_group") +
  xlab ("exit_group") +
  ylab ("Nombre patiens")

# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$first_department)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par first_department") +
  xlab ("first_department") +
  ylab ("Nombre patiens")

# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$exit_department)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par exit_department") +
  xlab ("exit_department") +
  ylab ("Nombre patiens")

# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$outcome)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par outcome") +
  xlab ("outcome") +
  ylab ("Nombre patiens")

# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$ED_dur_hours)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par ED_dur_hours") +
  xlab ("ED_dur_hours") +
  ylab ("Nombre patiens")

# Créer un diagramme à barres de fréquence
ggplot(
  data = data.frame, 
  aes(x = data.frame$hospitalization_dur_days)) + 
  geom_bar() +
  ggtitle ("Nombre de vistes par hospitalization_dur_days") +
  xlab ("hospitalization_dur_days") +
  ylab ("Nombre patiens")

##########################################################


# Créer un graphique de densité
ggplot(
  data = data.frame, 
  aes(x = data.frame$first_ward)) +
  geom_density() +
  ggtitle ("Répartition first_ward") +
  xlab ("Économie de first_ward") +
  ylab ("Nombre de patiens")

# Créer un graphique de densité
ggplot(
  data = data.frame, 
  aes(x = data.frame$exit_unit)) +
  geom_density() +
  ggtitle ("Répartition exit_unit") +
  xlab ("Économie de exit_unit") +
  ylab ("Nombre de patiens")

# Créer un graphique de densité
ggplot(
  data = data.frame, 
  aes(x = data.frame$exit_department)) +
  geom_density() +
  ggtitle ("Répartition exit_department") +
  xlab ("Économie de exit_department") +
  ylab ("Nombre de patiens")

# Créer un graphique de densité
ggplot(
  data = data.frame, 
  aes(x = data.frame$outcome)) +
  geom_density() +
  ggtitle ("Répartition outcome") +
  xlab ("Économie de outcome") +
  ylab ("Nombre de patiens ")

# Créer un graphique de densité
ggplot(
  data = data.frame, 
  aes(x = data.frame$ED_dur_hours)) +
  geom_density() +
  ggtitle ("Répartition ED_dur_hours") +
  xlab ("Économie de ED_dur_hours") +
  ylab ("Nombre de patiens ")










# Créer un nuage de points relations
ggplot(
  data = data.frame, 
  aes(
    x =  data.frame$first_ward,
    y = data.frame$ED_dur_hours)) +
  geom_point() +
  ggtitle ("Répartition de nbr ED_dur_hours et first_ward ") +
  xlab ("Économie first_ward") +
  ylab ("age patient")

# Créer un nuage de points relations
ggplot(
  data = data.frame, 
  aes(
    x =  data.frame$entry_unit,
    y = data.frame$age_years)) +
  geom_point() +
  ggtitle ("Répartition de nbr ED_dur_hours et first_ward ") +
  xlab ("Économie first_ward") +
  ylab ("age")

# Créer un nuage de points relations
ggplot(
  data = data.frame, 
  aes(
    x =  data.frame$first_ward,
    y = data.frame$ED_dur_hours)) +
  geom_point() +
  ggtitle ("Répartition de nbr ED_dur_hours et first_ward ") +
  xlab ("Économie first_ward") +
  ylab ("ED_dur_hours en heurs ")




  