cof<-read.csv(file.choose()) # customer_order(unstacked).csv
View(cof)
attach(cof)
## no normalization test is required for proportion test####
# countries are in their own columns; so we need to stack the data 
stacked_cof1 <- stack(c(cof$Phillippines,cof$Indonesia,cof$Malta,cof$India, data = "cof"))
attach(stacked_cof1)
View(stacked_cof1)
table(stacked_cof1$ind,stacked_cof1$values)
#########Chi Square Test ###########
chisq.test(table(stacked_cof1$ind,stacked_cof1$values))
## p-value -2.2e-16 < 0.05 go for alternative hypothesis###