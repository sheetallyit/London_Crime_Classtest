#Q1

#Reading the .csv datafile and naming it as london_crime
london_crime <- read.csv("london-crime-data.csv", na = "")
#displying the newly formed dataset london_crime
london_crime
#displaying the structure of the dataset
str(london_crime)


#total <- cbind(month, year)
#==============================================
# Q2

# Displaying the data set names before renaming
names(london_crime)

# Renaming the variable name of column number 2,3,4,5 and 6
names(london_crime)[2]  <- "Borough"
names(london_crime)[3]  <- "MajorCategory"
names(london_crime)[4]  <- "SubCategory"
names(london_crime)[5]  <- "Value"
names(london_crime)[6]  <- "CrimeDate"

# Displaying the data set names after renaming
names(london_crime)

#==============================================

# Q3

# Displaying the structure of dataset before changing datatype
str(london_crime)
# Changing the datatype from integer to date
london_crime$CrimeDate <- as.Date(london_crime$CrimeDate, "%m/%d/%Y")
# Displaying the structure of dataset after changing datatype
str(london_crime)


#=========================================

#Q4 
plot(london_crime)
attach(Borough)
plot(Borough, type = "o", col = "blue")


CrimeDate1 <- as.Date(CrimeDate, "%Y/%d/%m")
str(CrimeDate1)
str(london_crime)

london_crime$CrimeDate = london
str(london_crime)

#===================================================

# Q6
# Enter data into vectors before constructing the data frame
Region <- c("East", "North", "East", "West", "South", "North", "South", 
            "West", "North", "East", "North", "West", "North", "West", 
            "East", "West", "West", "Central", "Central", "East", 
            "Central", "Central", "South", "East", "East", "West", 
            "Central", "South", "Central", "Central", "East", "Central")
london_crime



london_crime <- data.frame(london_crime, Region)

london_crime

#===================================================

# Q

install.packages("mice")
library(mice)
# Using mice
md.pattern(ufo_data) 

install.packages("VIM")
library(VIM)
ufo_missing_value <- aggr(ufo_data, prop = TRUE,numbers = FALSE)
summary(ufo_missing_value)


#===========================================================
london_crime <- data.frame(CrimeDate)

plot(london_crime)
?plot

attach(london_crime)
plot(dose, type = 'o', col = "blue")















