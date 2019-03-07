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



#V1 -> NLOC
#V2 -> CNN
#V3 -> TOKEN
#V4 -> PARAM
#V5 -> 
#V6 -> File 
#v7 -> ??
#V8 -> ??
#V9 -> ??
#V10 -> ??
#V11 -> FUNCTION COUNT 



############ CNN CALCULATIONS ############## 
# 2011 Calculations 
d.2011_CNN <- d.1.3$V2
r.2011_CNN <- r.3.1$V2
mean(d.1.3$V2)
mean(r.3.1$V2)
CNN_2011<-t.test(d.2011_CNN ,r.2011_CNN,var.equal = FALSE)
write.table(data.frame(unlist(CNN_2011)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/CNN_2011.txt", sep="\t", col.names = T, row.names = T)


# 2012 Calculations 
d.2012_CNN <- d.1.4$V2
r.2012_CNN <- r.3.2$V2
CNN_2012<-t.test(d.2012_CNN ,r.2012_CNN,var.equal = FALSE)
write.table(data.frame(unlist(CNN_2012)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/CNN_2012.txt", sep="\t", col.names = T, row.names = T)

# 2013 Calculations 
d.2013_CNN <- d.1.6$V2
r.2013_CNN <- r.4.0$V2
CNN_2013<-t.test(d.2013_CNN,r.2013_CNN ,var.equal = FALSE)
write.table(data.frame(unlist(CNN_2013)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/CNN_2013.txt", sep="\t", col.names = T, row.names = T)


#2014 Calculations
d.2014_CNN <- d.1.7$V2
r.2014_CNN <- r.4.1$V2
CNN_2014 <- t.test(d.2014_CNN, r.2014_CNN, var.equal = FALSE)
write.table(data.frame(unlist(CNN_2014)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/CNN_2014.txt", sep="\t", col.names = T, row.names = T)



#2015 Calculations
d.2015_CNN<- d.1.9$V2
r.2015_CNN <- r.4.2$V2
CNN_2015 <- t.test(d.2014_CNN,r.2015_CNN , var.equal = FALSE)
write.table(data.frame(unlist(CNN_2015)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/CNN_2015.txt", sep="\t", col.names = T, row.names = T)


#2016 Calculations 
d.2016_CNN<- d.1.10$V2
r.2016_CNN <- r.5.0$V2
CNN_2016 <- t.test(d.2016_CNN,r.2016_CNN, var.equal = FALSE)
write.table(data.frame(unlist(CNN_2016 )), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/CNN_2016.txt", sep="\t", col.names = T, row.names = T)




############ NLOC CALCULATIONS ############## 
# 2011 Calculations 
d.2011_NLOC <- d.1.3$V1
r.2011_NLOC <- r.3.1$V1
NLOC_2011<-t.test(d.2011_NLOC ,r.2011_NLOC,var.equal = FALSE)
write.table(data.frame(unlist(NLOC_2011)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/NLOC_2011.txt", sep="\t", col.names = T, row.names = T)


# 2012 Calculations 
d.2012_NLOC <- d.1.4$V1
r.2012_NLOC <- r.3.2$V1
NLOC_2012<-t.test(d.2012_NLOC,r.2012_NLOC,var.equal = FALSE)
write.table(data.frame(unlist(NLOC_2012)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/NLOC_2012.txt", sep="\t", col.names = T, row.names = T)

# 2013 Calculations 
d.2013_NLOC <- d.1.6$V1
r.2013_NLOC <- r.4.0$V1
NLOC_2013<-t.test(d.2013_NLOC,r.2013_NLOC,var.equal = FALSE)
write.table(data.frame(unlist(NLOC_2013)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/NLOC_2013.txt", sep="\t", col.names = T, row.names = T)


#2014 Calculations
d.2014_NLOC <- d.1.7$V1
r.2014_NLOC <- r.4.1$V1
NLOC_2014 <- t.test(d.2014_NLOC, r.2014_NLOC, var.equal = FALSE)
write.table(data.frame(unlist(NLOC_2014)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/NLOC_2014.txt", sep="\t", col.names = T, row.names = T)



#2015 Calculations
d.2015_NLOC<- d.1.9$V1
r.2015_NLOC <- r.4.2$V1
NLOC_2015 <- t.test(d.2014_NLOC,r.2015_NLOC, var.equal = FALSE)
write.table(data.frame(unlist(NLOC_2015)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/NLOC_2015.txt", sep="\t", col.names = T, row.names = T)


#2016 Calculations 
d.2016_NLOC<- d.1.10$V1
r.2016_NLOC <- r.5.0$V1
NLOC_2016 <- t.test(d.2016_NLOC,r.2016_NLOC, var.equal = FALSE)
write.table(data.frame(unlist(NLOC_2016 )), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/NLOC_2016.txt", sep="\t", col.names = T, row.names = T)



############ FUNC CALCULATIONS ############## 
# 2011 Calculations 
d.2011_FUNC <- d.1.3$V11
r.2011_FUNC <- r.3.1$V11
FUNC_2011<-t.test(d.2011_FUNC,r.2011_FUNC,var.equal = FALSE)
write.table(data.frame(unlist(FUNC_2011)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/FUNC_2011.txt", sep="\t", col.names = T, row.names = T)


# 2012 Calculations 
d.2012_FUNC <- d.1.4$V11
r.2012_FUNC <- r.3.2$V11
FUNC_2012<-t.test(d.2012_FUNC,r.2012_FUNC,var.equal = FALSE)
write.table(data.frame(unlist(FUNC_2012)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/FUNC_2012.txt", sep="\t", col.names = T, row.names = T)

# 2013 Calculations 
d.2013_FUNC <- d.1.6$V11
r.2013_FUNC <- r.4.0$V11
FUNC_2013<-t.test(d.2013_FUNC,r.2013_FUNC,var.equal = FALSE)
write.table(data.frame(unlist(FUNC_2013)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/FUNC_2013.txt", sep="\t", col.names = T, row.names = T)


#2014 Calculations
d.2014_FUNC <- d.1.7$V11
r.2014_FUNC <- r.4.1$V11
FUNC_2014 <- t.test(d.2014_FUNC, r.2014_FUNC, var.equal = FALSE)
write.table(data.frame(unlist(FUNC_2014)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/FUNC_2014.txt", sep="\t", col.names = T, row.names = T)



#2015 Calculations
d.2015_FUNC<- d.1.9$V11
r.2015_FUNC <- r.4.2$V11
FUNC_2015 <- t.test(d.2014_FUNC,r.2015_FUNC, var.equal = FALSE)
write.table(data.frame(unlist(FUNC_2015)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/FUNC_2015.txt", sep="\t", col.names = T, row.names = T)


#2016 Calculations 
d.2016_FUNC<- d.1.10$V11
r.2016_FUNC <- r.5.0$V11
FUNC_2016 <- t.test(d.2016_FUNC,r.2016_FUNC, var.equal = FALSE)
write.table(data.frame(unlist(FUNC_2016 )), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/FUNC_2016.txt", sep="\t", col.names = T, row.names = T)



############ WRNCALCULATIONS ############## 
# 2011 Calculations 
d.2011_WRN <- d.1.3.w$V2
r.2011_WRN <- r.3.1.w$V2
WRN_2011<-t.test(d.2011_WRN,r.2011_WRN,var.equal = FALSE)
write.table(data.frame(unlist(WRN_2011)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2011.txt", sep="\t", col.names = T, row.names = T)


# 2012 Calculations 
d.2012_WRN <- d.1.4.w$V2
r.2012_WRN <- r.3.2.w$V2
WRN_2012<-t.test(d.2012_WRN,r.2012_WRN,var.equal = FALSE)
write.table(data.frame(unlist(WRN_2012)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2012.txt", sep="\t", col.names = T, row.names = T)

# 2013 Calculations 
d.2013_WRN <- d.1.6.w$V2
r.2013_WRN <- r.4.0.w$V2
FUNC_2013<-t.test(d.2013_WRN,r.2013_WRN,var.equal = FALSE)
write.table(data.frame(unlist(WRN_2013)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2013.txt", sep="\t", col.names = T, row.names = T)


#2014 Calculations
d.2014_WRN <- d.1.7.w$V2
r.2014_WRN <- r.4.1.w$V2
WRN_2014 <- t.test(d.2014_WRN, r.2014_WRN, var.equal = FALSE)
write.table(data.frame(unlist(WRN_2014)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2014.txt", sep="\t", col.names = T, row.names = T)



#2015 Calculations
d.2015_WRN<- d.1.9.w$V2
r.2015_WRN <- r.4.2.w$V2
WRN_2015 <- t.test(d.2014_WRN,r.2015_WRN, var.equal = FALSE)
write.table(data.frame(unlist(WRN_2015)), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2015.txt", sep="\t", col.names = T, row.names = T)


#2016 Calculations 
d.2016_WRN<- d.1.10.w$V2
r.2016_WRN <- r.5.0.w$V2
WRN_2016 <- t.test(d.2016_WRN,r.2016_WRN, var.equal = FALSE)
write.table(data.frame(unlist(WRN_2016 )), append = TRUE, file="/Users/chloequinto/Documents/code-base-metrics/Results/WRN_2016.txt", sep="\t", col.names = T, row.names = T)



