install.packages("readr")
library(readr)
buyer<-read.csv("E:\\Assignment\\hypthosis data set\\buyerratio.csv")
View(buyer)
attach(buyer)
#########Chi Square(Bahaman Research)#################
data.matrix(buyer,rownames.force = NA)
table(Observed.Values,East,West,North,South)
br1<- buyer[ , -1]
View(br1)
row.names(br1)<-c("male","females")
View(br1)
chisq.test(br1)
# p-value = 0.6615 > 0.05  => Accept null hypothesis
# => All countries have equal proportions
