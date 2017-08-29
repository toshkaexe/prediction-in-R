# load row data


# train <- read.csv("train.csv", header = TRUE)
# test  <- read.csv("test.csv",  header = TRUE)


#Add a Survived variable to the use to

file_Name <- "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/scanned_beacons.csv";
#ScannedBeacons <- read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/scanned_beacons.csv",head=TRUE,sep=",")


ScannedBeacons <- read.csv(file = file_Name, head=TRUE, sep=",")


#ScannedBeacons

summary(ScannedBeacons)

head(ScannedBeacons)
#ScannedBeacons[row,]
#
#read.table(file = file_Name, row.names=1)

#which(ScannedBeacons$Document.name == "CC PM***")
#rownames(mtcars)[mtcars[[ScannedBeacons]] == "CC PM***]


#rownames(ScannedBeacons[ScannedBeacons$Document.name  = "CC PM***"])

# number of column and row
nR <- nrow(ScannedBeacons)   # 3
nC <- ncol(ScannedBeacons)   # 4

nR
nC


# nameofRows
nameofRows  <- colnames(ScannedBeacons)[4]
ScannedBeacons$Document.name
ux <- unique(ScannedBeacons$Document.name)

length(ux)
ux[0]
ux[1]
ux[2]
ux[3]


length(ScannedBeacons$Document.name)

# rows with CCA AP
ScannedBeacons[ScannedBeacons$Document.name == "CCA AP", ] 
ScannedBeacons[ScannedBeacons$Document.name == "Instagram", ] 
ScannedBeacons[ScannedBeacons$Document.name == "CCA AP", ] 
ScannedBeacons[ScannedBeacons$Document.name == "CCA AP", ] 
aaa <- ScannedBeacons[ScannedBeacons$Document.name == "CCA AP", ] 











Hours <- format(as.POSIXct(strptime(ScannedBeacons$ï..created_at,"%Y/%M/%D %H:%M:%S",tz="")) ,format = "%H:%M:%S")
#output "15:44" "23:24" "19:15" "20:52" "07:46" "01:55"

Dates <- format(as.POSIXct(strptime(weather$Time,"%d/%m/%Y %H:%M",tz="")) ,format = "%d/%d/%Y")
#output "27/27/2015" "23/23/2015" "31/31/2015" "20/20/2015" "23/23/2015" "31/31/2015"

#weather$Dates <- Dates
#weather$Hours <- Hours
#####################################################################################################
#Probably an easier way to do this, but this is my approach...

library(plyr)
library(lubridate)

#Sample Data
df<-data.frame(time=as.POSIXct(c(
  '2017-07-03 08:23:00',
  '2017-07-03 09:00:00',
  '2017-07-03 17:23:00',
  '2017-07-03 18:05:00',
  '2017-07-04 08:24:00',
  '2017-07-04 09:02:00',
  '2017-07-04 17:24:00',
  '2017-07-04 18:01:00',
  '2017-07-05 08:57:00',
  '2017-07-05 09:31:00',
  '2017-07-05 16:25:00',
  '2017-07-05 17:14:00')))

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





