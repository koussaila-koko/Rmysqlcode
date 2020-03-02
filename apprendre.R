




install.packages("RMySQL")
library(RMySQL)
mydb = dbConnect(MySQL(), dbname='test', host='localhost')
dbListTables(mydb)
dbListFields(mydb, 'visits_return_2004_2007')
rq=dbGetQuery(mydb,"SELECt * FROM visits_return_2004_2007 ")
##age20=fetch(rq)
rs = dbSendQuery(mydb, "select  age_years from visits_return_2004_2007  ")
nbr=fetch(rs)

rq=dbGetQuery(mydb,"SELECt * FROM visits_return_2004_2007 ")
age20=fetch(rq)

# Charger la bibliothèque de brasseurs de couleurs
library(RColorBrewer)

# Créer une palette de couleurs
palette <- brewer.pal(3, "Set2")

# Crée un nuage de points coloré par espèce
plot(
  y = rq$n_visits_to_Int_wards, 
  x = rq$n_visits_to_hospital,
  pch = 19,
  col = palette[as.numeric(rq$exit_group)],
  main = "n_visits_to_hospital et n_visits_to_Int_wards ",
  ylab = "n_visits_to_Int_wards ",
  xlab = "n_visits_to_hospital")


summary(rq)
summary(rq$age_years)
summary(rq$num_dep)
summary(rq$n_visits_to_hospital)
summary(rq$n_visits_to_ED)
summary(rq$n_visits_to_Int_wards)
summary(rq$n_visits_to_oncology)
summary(rq$n_visits_to_wards_via_ED)
summary(rq$age_years)
summary(rq$age_years)

on.exit(dbDisconnect(con))


result=dbSendQuery(mydb,"SELECT COUNT(*) FROM visits_return_2004_2007 WHERE age_years<13")
data.frame=fetch(result)
nov2005<-data.frame
print(nov2005)

dbDisconnect(con)
