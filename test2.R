



ScannedBeaconsDay=read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/1__datatime_beacons.csv")

ScannedBeaconsDay


ScannedBeaconsDay$Hours

library(lubridate)
df<-data.frame(time=as.POSIXct(ScannedBeaconsDay$ï..created_at))
#Sample Data
#df<-data.frame(time=as.POSIXct(c(
 # '2017-07-03 08:23:00',
#  '2017-07-03 09:00:00',
#  '2017-07-03 17:23:00',
#  '2017-07-03 18:05:00',
#  '2017-07-04 08:24:00',
#  '2017-07-04 09:02:00',
#  '2017-07-04 17:24:00',
#  '2017-07-04 18:01:00',
#  '2017-07-05 08:57:00',
#  '2017-07-05 09:31:00',
#  '2017-07-05 16:25:00',
#  '2017-07-05 17:14:00')))

#Extract Time
df$hour = hour(df$time) + minute(df$time)/60 + second(df$time)/3600

#Create Bins
bins=c(paste0(rep(c(paste0(0,0:9),10:23), each=4),".", c("00",25,50,75))[-1],"24:00")

#Divide Data Into Bins
df$bins = cut(df$hour, breaks=seq(0, 24, 0.25), labels=bins)

#Reformat to Numeric
df$bins <- as.numeric(as.character(df$bins))

#Histogram
hist(df$bins)

#With ggplot
library(ggplot2)
ggplot(df, aes(bins)) +
  geom_histogram()

