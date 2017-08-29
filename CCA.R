

#ScannedBeaconsDay=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/CCA_09.08.csv")

f1 <- function(ScannedBeaconsDay) {

  function(){
#ScannedBeaconsDay=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/CCA_09.08.csv")

ScannedBeaconsDay


ScannedBeaconsDay$Hours

library(lubridate)
df<-data.frame(time=as.POSIXct(ScannedBeaconsDay$ï..created_at))
#Extract Time
df$hour = hour(df$time) + minute(df$time)/60 + second(df$time)/3600
#Create Bins
bins=c(paste0(rep(c(paste0(0,0:9),10:23), each=4),".", c("00",25,50,75))[-1],"24:00")
#Divide Data Into Bins
df$bins = cut(df$hour, breaks=seq(0, 24, 0.25), labels=bins)
#Reformat to Numeric
df$bins <- as.numeric(as.character(df$bins))

histInfo <- hist(df$bins, breaks=seq(0,24,by=1), col = "red")
return(histInfo)

}
}


ScannedBeaconsDay07=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/CCA_07.08.csv")
ScannedBeaconsDay08=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/CCA_08.08.csv")
ScannedBeaconsDay09=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/CCA_09.08.csv")
ScannedBeaconsDay10=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/CCA_10.08.csv")
ScannedBeaconsDay11=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/CCA_11.08.csv")

histInfo07<-f1(ScannedBeaconsDay07)()
histInfo08<-f1(ScannedBeaconsDay08)()
histInfo09<-f1(ScannedBeaconsDay09)()
histInfo10<-f1(ScannedBeaconsDay10)()
histInfo11<-f1(ScannedBeaconsDay11)()

histInfo07$mids

x1 <- c(histInfo07$counts)
x2 <- c(histInfo08$counts)
x3 <- c(histInfo09$counts)
x4 <- c(histInfo10$counts)
x5 <- c(histInfo11$counts)




A <- cbind(c(x1),c(x2),c(x3),c(x4),c(x5))
A
at <- t(A)
at


meanAT


meanATm = c(mean(at[,1]),mean(at[,2]),mean(at[,3]),mean(at[,4]),mean(at[,5]),mean(at[,6]),mean(at[,7]),mean(at[,8]),mean(at[,9]),mean(at[,10]),mean(at[,11]),mean(at[,12]),mean(at[,13]),mean(at[,14]),mean(at[,15]),mean(at[,16]),mean(at[,17]),mean(at[,18]),mean(at[,19]),mean(at[,20]),mean(at[,21]),mean(at[,22]),mean(at[,23]),mean(at[,24]))
meanATm
#cbind(c(1,2,3),c(4,5,6))


plot(y1,x1,col = "red")
par(new=TRUE)
plot(y1,x2,col = "red")
par(new=TRUE)
plot(y1,x3,col = "red")
par(new=TRUE)
plot(y1,x4,col = "red")
par(new=TRUE)
plot(y1,x5,col = "red")







histInfo11$density


bplot <-boxplot(at)

  
