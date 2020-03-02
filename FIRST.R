install.packages("RMySQL")

library(RMySQL)
library(dbConnect)
con1=dbConnect(MySQL(),user='root',dbname='rambam',host='localhost')
rq1=dbGetQuery(con1,"select*  from visits where age_years< 99")
#nbr d'heurs passer devant la tel
library(questionr)
library(ggplot2)

ggplot(rq1) +
  aes(x = rq1$hospitalization_dur_days) +
  geom_histogram() +
  geom_bar() +
  ggtitle("Nombres d'heures passées devant la télévision") +
  xlab("Heures") +
  ylab("Effectifs")

ggplot(rq1) +
  aes(x = rq1$age_years, y = rq1$ED_dur_hours) +
  geom_point() +
  xlab("Âge") +
  ylab("Heures quotidiennes de télévision")

