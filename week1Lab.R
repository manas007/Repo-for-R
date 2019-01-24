#Lab 1
#Author: Manas Tripathi

#First Step, read the data from csv file.
seatbelts <- read.csv("seatbelts.csv")

#view the data 
View(seatbelts)

#verify the data type of our data frame variable
class(seatbelts)

# see the number of rows and colmns
dim(seatbelts)

#see all the column names
colnames(seatbelts)

# summary of the data
summary(seatbelts)

# avg number of drivers killer for all the cases
mean(seatbelts[ , "DriversKilled"])

#avg number of drivers killed from 1969 to 1970. 
mean(seatbelts[seatbelts[,"year"]>=1969 & seatbelts[,"year"]<1970,"DriversKilled"])

# find the avg drivers killed for every year in dataset
by(seatbelts[,"DriversKilled"], seatbelts[,"year"], mean)

# find the avg number of rear passengers killed for each year in the dataset
by(seatbelts[,"rear"], seatbelts[,"year"], mean)

# kms vs number of drivers killed
plot(seatbelts[,"kms"], seatbelts[,"DriversKilled"])

# drivers killed vs petrol price
plot(seatbelts[,"DriversKilled"], seatbelts[,"PetrolPrice"])

# plotting years vs mean death per year
mean_death_per_year <- by(seatbelts[,"DriversKilled"],seatbelts[,"year"], mean)
years <- unique(seatbelts[,"year"])
plot(years, mean_death_per_year, type = "l")

#drawing the abline
abline(v=1982, col = "blue")



