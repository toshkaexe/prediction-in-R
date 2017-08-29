
Humidity <- c(37.79, 42.34, 52.16, 44.57, 43.83, 44.59)
Humidity

#Rain <- c(0.971360441, 1.10969716, 1.064475853, 0.953183435, 0.98878849, 0.939676146)
Rain <- c('AAA', 'CCC', 'BBB', 'BBB', 'AAA', 'AAA')
Rain

Time <- c("27-01-2015 15:44:02","23-02-2015 23:24:02", "31-03-2015 19:15:02", "20-01-2015 20:52:02", "23-02-2015 07:46:02", "31-01-2015 01:55:02")
Time
weather <- data.frame(Humidity, Rain, Time)


Hours <- format(as.POSIXct(strptime(weather$Time,"%d-%m-%Y %H:%M",tz="")) ,format = "%H:%M")
#output
#"15:44" "23:24" "19:15" "20:52" "07:46" "01:55"

Dates <- format(as.POSIXct(strptime(weather$Time,"%d-%m-%Y %H:%M",tz="")) ,format = "%d-%d-%Y")
#output "27/27/2015" "23/23/2015" "31/31/2015" "20/20/2015" "23/23/2015" "31/31/2015"

weather$Dates <- Dates
weather$Hours <- Hours

#output
weather


