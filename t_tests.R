# Scrip to execute T tests 

library(readxl)


setwd("/Users/chloequinto/Documents/code-base-metrics/input results")

d.1.6 <- read.csv("d_1.6.csv", header= FALSE)
#V5 is function count 
#V7 is the file 


myContain <- list()
run <- sequence(rle(as.character(d.1.6$V7))$lengths)
values <- unique(d.1.6$V7)
for(i in values){ 
  for (b in run){ 
    while(b != 1){
      myContain[i] <- b
      }
    }
  
}


num = 0
for (i in d.1.6$V7){ 
  if (d.1.6$V7[i] == d.1.6$V7[i+1]){
    myContain[i] <- num
    num = num + 1
  }
  else { 
    num = 0
    myContain[i] <- num
    }
}
count = 0
run <- sequence(rle(as.character(d.1.6$V7))$lengths)
for (i in run){
  while(i != 1){
    myContain[d.1.6$V7] <- i  
    }
}
head(unique(d.1.6$V7))
View(run)
write.table(run, "d.1.6_results.txt")
write.table(unique(d.1.6$V7), "d.1.6_res.txt" )
really <- table(d.1.6$V7)
head(really)
