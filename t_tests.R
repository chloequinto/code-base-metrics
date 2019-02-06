# Scrip to execute T tests 

library(readxl)


setwd("/Users/chloequinto/Documents/code-base-metrics")
### AVERAGE NLOC ###

DATA_D <- read_excel("t_test.xlsx", sheet = "Django") 
DATA_R <- read_excel("t_test.xlsx", sheet = "Ruby")

AVG_NLOC <- t.test(DATA_D$NLOC, DATA_R$NLOC, var.equal = FALSE)
write.table(data.frame(unlist(AVG_NLOC)), append = TRUE, file = "results_NLOC.csv", col.names = TRUE, row.names = TRUE)


AVG_CNN <- t.test(DATA_D$CNN, DATA_R$CNN, var.equal = FALSE)
write.table(data.frame(unlist(AVG_CNN)), append = TRUE, file = "results_CNN.csv", col.names = TRUE, row.names = TRUE)

AVG_FN <- t.test(DATA_D$Fun, DATA_R$Fun, var.equal = FALSE)
write.table(data.frame(unlist(AVG_FN)), append = TRUE, file = "results_FN.csv", col.names = TRUE, row.names = TRUE)

AVG_WRN <- t.test(DATA_D$Wrn, DATA_R$Wrn, var.equal = FALSE)
write.table(data.frame(unlist(AVG_WRN)), append = TRUE, file = "results_WRN.csv", col.names = TRUE, row.names = TRUE)


head(AVG_NLOC)
