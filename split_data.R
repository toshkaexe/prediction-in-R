




#ï..created_at
file_Name <- "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/scanned_beacons.csv"
#ScannedBeacons <- read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/scanned_beacons.csv",head=TRUE,sep=",")


ScannedBeacons <- read.csv(file = file_Name, head=TRUE, sep=",")


ScannedBeacons

summary(ScannedBeacons)

head(ScannedBeacons)
#i..created_at 
#id 
#pos_id
#Document.name 


#name of rows
nameofRows  <- colnames(ScannedBeacons)

ScannedBeacons$Document.name



#ScannedBeacons<- data.frame(Time, id, poi_id, Document.name)

Hours <- format(as.POSIXct(strptime(ScannedBeacons$ï..created_at, "%Y-%m-%d %H:%M:%S",tz="")) ,format = "%H:%M:%S")

Dates <- format(as.POSIXct(strftime(ScannedBeacons$ï..created_at, "%Y-%m-%d %H:%M:%S",tz="")) ,format = "%Y-%m-%d")




ScannedBeacons$Dates <- Dates
ScannedBeacons$Hours <- Hours
# ScannedBeacons$col.name


ScannedBeacons

write.table(ScannedBeacons, file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/11day_hours_scanned_beacons.csv",col.names=TRUE, sep=",", quote = FALSE)

hist(ScannedBeacons$Dates)



datetime <- ScannedBeacons$Hours



datetime

write.csv(ScannedBeacons, file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/1__datatime_beacons.csv")

write.table(ScannedBeacons, file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/1111111datatime_beacons.csv", na="",col.names=TRUE, sep=",",  quote = FALSE)

heure <- as.integer(substr(datetime, 12, 13))
conversion <- data.frame(datetime=datetime, heure=heure,
                         period=cut(heure, c(-Inf, 7, 10, 12, 17, Inf),
                                    labels=c("night", "morning", "noon", "afternoon", "evening", "tonight")))


#night   <- interval(hms("00:00:00"), hms("05:00:00")) 
night   <- interval(as.POSIXct("00:00:00", format = "%H:%M:%S"), as.POSIXct("5:00:00", format = "%H:%M:%S")) 

morning <- interval(hms("05:01:00"), hms("12:00:00")) 
day     <- interval(hms("12:01:00"), hms("17:00:00")) 
tonight   <- interval(hms("17:01:00"), hms("23:59:00")) 

night
morning
day
tonight



as.POSIXct("00:00:00", format = "%H:%M:%S")
as.POSIXct("00:00:00", format = "%H:%M:%S")










