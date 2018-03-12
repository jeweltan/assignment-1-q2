#Assignment 1 Q2
require(dplyr)
setwd("/Users/Qinli/Google Drive/ST4240/Assignment_1")

# Rearranging and renaming the columns
test = read.csv("cs-test.csv", header = TRUE)
train = read.csv("cs-training.csv", header = TRUE)

colnames(train) = c("ID", "delinq", "RUUL", "age", "pastDueTimes_30", 
                       "debtRatio", "monInc", "openLinesLoans", "pastDueTimes_90", "ReLinesLoans", 
                       "pastDueTimes_60", "depends")
colnames(test) = c("ID", "delinq", "RUUL", "age", "pastDueTimes_30", 
                       "debtRatio", "monInc", "openLinesLoans", "pastDueTimes_90", "ReLinesLoans", 
                       "pastDueTimes_60", "depends")

train = train %>% select(ID, age, monInc, depends, delinq, debtRatio, RUUL, pastDueTimes_30, 
                                pastDueTimes_60, pastDueTimes_90, ReLinesLoans, openLinesLoans)
test = test %>% select(ID, age, monInc, depends, delinq, debtRatio, RUUL, pastDueTimes_30, 
                             pastDueTimes_60, pastDueTimes_90, ReLinesLoans, openLinesLoans)

# Removing entries with NA values and age 0 from training set
train = train[complete.cases(train),]
train = train[!train$age == 0,]   #29732 entries deleted from 150000


