# Scrip to execute T tests 
library(readxl)


setwd("/Users/chloequinto/Documents/code-base-metrics/input results")


d.1.3 <- read.csv("django_1.3.csv", header = FALSE )
d.1.4 <- read.csv("django_1.4.csv", header = FALSE)
d.1.5 <- read.csv("django_1.5.csv", header = FALSE)
d.1.6 <- read.csv("django_1.6.csv", header = FALSE)
d.1.7 <- read.csv("django_1.7.csv", header = FALSE)
d.1.8 <- read.csv("django_1.8.csv", header = FALSE)
d.1.9 <- read.csv("django_1.9.csv", header = FALSE)
d.1.10 <- read.csv("django_1.10.csv", header = FALSE)

r.3.1 <- read.csv("rails_3.1.csv", header = FALSE)
r.3.2 <- read.csv("rails_3.2.csv", header = FALSE)
r.4.0 <- read.csv("rails_4.0.csv", header = FALSE)
r.4.1 <- read.csv("rails_4.1.csv", header = FALSE)
r.4.2 <- read.csv("rails_4.2.csv", header = FALSE)
r.5.0 <- read.csv("rails_5.0.csv", header = FALSE)

############### Warnings Count Only ###################
setwd("/Users/chloequinto/Documents/code-base-metrics/input results/warnings_cleaned")
d.1.3.w <- read.csv("d.1.3.w.csv", header = FALSE)
d.1.4.w <- read.csv("d.1.4.w.csv", header = FALSE)
d.1.6.w <- read.csv("d.1.6.w.csv", header = FALSE)
d.1.7.w <- read.csv("d.1.7.w.csv", header = FALSE)
d.1.9.w <- read.csv("d.1.9.w.csv", header = FALSE)
d.1.10.w <- read.csv("d.1.10.w.csv", header = FALSE)


r.3.1.w <- read.csv("r.3.1.w.csv", header = FALSE)
r.3.2.w <- read.csv("r.3.2.w.csv", header = FALSE)
r.4.0.w <- read.csv("r.4.0.w.csv", header = FALSE)
r.4.1.w <- read.csv("r.4.1.w.csv", header = FALSE)
r.4.2.w <- read.csv("r.4.2.w.csv", header = FALSE)
r.5.0.w <- read.csv("r.5.0.w.csv", header = FALSE)



#V1 -> LOC
#V2 -> NLOC
#V3 -> CNN
#V4 -> TOKEN
#V5 -> Function Count
#V6 -> File 
#v7 -> ??
#V8 -> ??
#V9 -> ??
#V10 -> ??
#V11 -> ??



############ CALCULATIONS ############## 
# 2011 Calculations 
d.2011_WRN <- d.1.3.w$V2
r.2011_WRN <- r.3.1.w$V2
WRN_2011<-t.test(d.2011_WRN ,r.2011_WRN,var.equal = FALSE)
write.table(data.frame(unlist(WRN_2011)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2011.txt", sep="\t", col.names = T, row.names = T)


# 2012 Calculations 
d.2012_WRN <- d.1.4.w$V2
r.2012_WRN <- r.3.2.w$V2
WRN_2012<-t.test(d.2012_WRN ,r.2012_WRN,var.equal = FALSE)
write.table(data.frame(unlist(WRN_2012)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2012.txt", sep="\t", col.names = T, row.names = T)


# 2013 Calculations 
d.2013_WRN <- d.1.6.w$V2
r.2013_WRN <- r.4.0.w$V2
WRM_2013<-t.test(d.2013_WRN ,r.2013_WRN ,var.equal = FALSE)
write.table(data.frame(unlist(WRM_2013)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2013.txt", sep="\t", col.names = T, row.names = T)


#2014 Calculations
d.2014_WRN <- d.1.7.w$V2
r.2014_WRN <- r.4.1.w$V2
WRN_2014 <- t.test(d.2014_WRN, r.2014_WRN, var.equal = FALSE)
write.table(data.frame(unlist(WRN_2014)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2014.txt", sep="\t", col.names = T, row.names = T)



#2015 Calculations
d.2015_WRN<- d.1.9.w$V2
r.2015_WRN <- r.4.2.w$V2
WRN_2015 <- t.test(d.2014_WRN,r.2015_WRN , var.equal = FALSE)
write.table(data.frame(unlist(WRN_2015)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2015.txt", sep="\t", col.names = T, row.names = T)


#2016 Calculations 
d.2016_WRN<- d.1.10.w$V2
r.2016_WRN <- r.5.0.w$V2
WRN_2016 <- t.test(d.2016_WRN,r.2016_WRN, var.equal = FALSE)
write.table(data.frame(unlist(WRN_2016 )), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2016.txt", sep="\t", col.names = T, row.names = T)


