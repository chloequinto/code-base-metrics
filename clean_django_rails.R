library(xlsx)
library(XLConnect)

#if you reach the GC overhead limit 
options(java.parameters = "-Xmx1024m")
options(java.parameters = "-Xmx8000m") 

#NoSuchMethodError
library(devtools)

install_version("XLConnectJars", version = "0.2-12", repos = "http://cran.us.r-project.org") 
install_version("XLConnect", version = "0.2-12", repos = "http://cran.us.r-project.org")`


#Read and Write the data files 
read_django_1.3<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.3.x/clean_django-1.3.x.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.3, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.3", col.names = TRUE, row.names = TRUE, append = TRUE)


read_django_1.4<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.4.x/p_django-1.4.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.4, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.4", col.names = TRUE, row.names = TRUE, append = TRUE)


read_django_1.5<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.5.x/dj-1.5.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.5, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.5", col.names = TRUE, row.names = TRUE, append = TRUE)



read_django_1.6<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.6.x/dj-1.6.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.6, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.6", col.names = TRUE, row.names = TRUE, append = TRUE)


read_django_1.7<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.7.x/dj-1.7.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.7, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.7", col.names = TRUE, row.names = TRUE, append = TRUE)



read_django_1.8<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.8.x/dj-1.8.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.8, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.8", col.names = TRUE, row.names = TRUE, append = TRUE)


read_django_1.9<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.9.x/dj-1.9.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.9, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.9", col.names = TRUE, row.names = TRUE, append = TRUE)



read_django_1.10<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/django-stable-1.10.x/dj-10.txt", header = FALSE, sep=",")
write.xlsx(read_django_1.10, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "Django_1.10", col.names = TRUE, row.names = TRUE, append = TRUE)

#Ruby Files 

read_r_3_1<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/rails-3-1-stable/r.3.1.txt", header = FALSE, sep=",")
write.xlsx2(read_r_3_1, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "rails-3-1-stable", col.names = TRUE, row.names = TRUE, append = TRUE)



read_r_3_2<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/rails-3-2-stable/r_3_2.txt", header = FALSE, sep=",")
write.xlsx2(read_r_3_2, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "rails-3-2-stable", col.names = TRUE, row.names = TRUE, append = TRUE)



read_r_4_0<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/rails-4-0-stable/r_4_0.txt", header = FALSE, sep=",")
write.xlsx2(read_r_4_0, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "rails-4-0-stable", col.names = TRUE, row.names = TRUE, append = TRUE)



read_r_4_1<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/rails-4-1-stable/r_4_1.txt", header = FALSE, sep=",")
write.xlsx2(read_r_4_1, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "rails-4-1-stable", col.names = TRUE, row.names = TRUE, append = TRUE)



read_r_4_2<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/rails-4-2-stable/r_4_2.txt", header = FALSE, sep=",")
write.xlsx2(read_r_4_2, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "rails-4-2-stable", col.names = TRUE, row.names = TRUE, append = TRUE)


read_r_5_0<-read.csv("C:/Users/Chloe Quinto/Documents/GitHub/rails-5-0-stable/r_5_0.txt", header = FALSE, sep=",")
write.xlsx2(read_r_5_0, "C:/Users/Chloe Quinto/Desktop/Cleaned up files/django_ruby_lizard.xlsx", sheetName = "rails-5-0-stable", col.names = TRUE, row.names = TRUE, append = TRUE)


#Calculate the Mean of the Column "CCN"
m_django_1.3 <- mean(read_django_1.3$V2, na.rm = FALSE)
m_django_1.4 <- mean(read_django_1.4$V2, na.rm = FALSE)
m_django_1.5 <- mean(read_django_1.5$V2, na.rm = FALSE)
m_django_1.6 <- mean(read_django_1.6$V2, na.rm = FALSE)
m_django_1.7 <- mean(read_django_1.7$V2, na.rm = FALSE)
m_django_1.8 <- mean(read_django_1.8$V2, na.rm = FALSE)
m_django_1.9 <- mean(read_django_1.9$V2, na.rm = FALSE)
m_django_1.10 <- mean(read_django_1.10$V2, na.rm = FALSE)
m_read_r_3_1 <- mean(read_r_3_1$V2, na.rm = FALSE)
m_read_r_3_2 <- mean(read_r_3_2$V2, na.rm = FALSE)
m_read_r_4_0 <- mean(read_r_4_0$V2, na.rm = TRUE)
m_read_r_4_1 <- mean(read_r_4_1$V2, na.rm = FALSE)
m_read_r_4_2 <- mean(read_r_4_2$V2, na.rm = FALSE)
m_read_r_5_0 <- mean(read_r_5_0$V2, na.rm = FALSE)


