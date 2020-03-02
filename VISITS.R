install.packages("RMySQL")
library(RMySQL)
con=dbConnect(MySQL(),user='root',dbname='rambam',host='localhost')
cOn.close()
#AGE ET NBR DE VISITS 
dbListTables(con)
rq=dbGetQuery(con,"select
count( age_years)  
from visits
where age_years< 99
group by age_years")

rq1=dbGetQuery(con,"select
*  
from visits
where age_years< 99")

summary(rq)
library(VIM)
library("dplyr")
library("ggplot2")
library("gridExtra")
library(ggplot2)
qplot(rq1$age_years)
install.packages("RGraphics")
library(RGraphics)
library(gridExtra)
p1 <- ggplot(rq1) +
  aes(x = rq1$entry_group, Y=rq1$gender,col = rq1$gender)+
  geom_bar(position = "dodge") +
  xlab("entry_group") + #Titre de l'axe x
  ylab("Effectifs") + #Titre de l'axe y
  labs(Y = "Genre") grid.arrange(p1, ncol=1) #Legendes

p2 <- ggplot(rq1) +
  aes(x = rq1$exit_group, fill=rq1$gender)+
  geom_bar(position = "dodge") +
  xlab("exit_group") + #Titre de l'axe x
  ylab("Effectifs") + #Titre de l'axe y
  labs(fill = "Genre") #Legendes

p3 <- ggplot(rq1) +
  aes(x = rq1$num_dep, fill=rq1$gender)+
  geom_bar(position = "dodge") +
  xlab("num_dep") + 
  ylab("Effectifs") + 
  labs(fill = "Genre") 
# permet de ombiner les graphiques sur la même page

grid.arrange(p1, p2,p3, ncol=3) 




ggplot(data = rq1,
       aes(x = rq1$num_dep, y = rq1$gender, col = rq1$entry_unit)) +
  geom_line()




fviz_pca_biplot(acp,
                repel=TRUE, #évite les chevauchements
                geom.ind = "point", #individus représentés par des points
                col.ind = rq1.acp$entry_group, # couleur par entry_group
                addEllipses = T, #concentration ellipses
                legend.title = "Genre",
                col.var="black" #couleur des variables
)





on.exit(dbDisconnect(con))







#######
install.packages("stpm")
library(stpm)
datamiss <- aggr(con,prop = F,number = T)







# Installing and Loading the VIM package
install.packages("VIM", dependencies = TRUE)
install.packages("gridExtra")
# Loading VIM Package
library(VIM)
library("dplyr")
library("ggplot2")
library("gridExtra")
# Loading the sleep dataset from VIM package
data(sleep)

# Checking the structure of sleep data
str(sleep)
aggr <- function(x, delimiter = NULL, plot = TRUE, ...) {
  UseMethod("aggr", x)
}
aggr.survey.design <- function(x, delimiter = NULL, plot = TRUE, ...) {
  aggr_work(rq$variables, delimiter, plot, ...)
}
# Creating a graph for understanding the missing value distribution.
aggr(x = sleep)


# Imputing missing values using knn
sleep_imputed_data <- kNN(sleep, variable=c("Sleep","Dream"))

# Imputing missing values using knn
sleep_imputed_data <- kNN(sleep, variable=c("Sleep","Dream"))

# Building graph for analysing missing values and imputation
aggr(sleep_imputed_data, delimiter="_imp", numbers=TRUE, prop=c(TRUE,FALSE))




#argence et age 

rq2=dbGetQuery(con,"SELECT `age_years`FROM `visits` WHERE `entry_group`=1 and age_years< 99 ")
library(ggplot2)
qplot(rq2$age_years)






dbDisconnect(con)
on.exit(dbDisconnect(con))

