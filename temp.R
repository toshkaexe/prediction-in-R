# load row data


# train <- read.csv("train.csv", header = TRUE)
# test  <- read.csv("test.csv",  header = TRUE)


#Add a Survived variable to the use to

file_Name <- "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/scanned_beacons.csv"
#ScannedBeacons <- read.csv(file = "C:/Users/azeltser/Desktop/Projekt/prediction_07082017/scanned_beacons.csv",head=TRUE,sep=",")





ScannedBeacons

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



