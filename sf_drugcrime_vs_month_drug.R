#load data
library(data.table)
library(gdata)
san = read.csv("sanfrancisco_incidents_summer_2014.csv")
sf.dt <- data.table(san)
sf.narc <- sf.dt[startsWith(sf.dt$Category, 'DRUG'), ]
sf.narc.sell <- sf.narc[grep('SALE', sf.narc$Descript),]
drug <- gsub("POSSESSION OF |BASE/ROCK |SALE OF | FOR SALE(S)*", "", sf.narc.sell$Descript)
Month <- month(as.Date(sf.narc.sell$Date, format="%m/%d/%y"))
sf.narc.sell <- cbind(sf.narc.sell, drug, Month)
sf.narc.mo <- sf.narc.sell[, .N, by=c('drug', 'Month')]
setorder(sf.narc.mo, drug, Month)

#plot finding
library(ggplot2)
#drop some columns to make pretty
sf.narc.mo.simpl = sf.narc.mo[!grep("OPIATES|METHADONE|HALLUCINOGENIC|BARBITUATES", sf.narc.mo$drug),]

ggplot(data=sf.narc.mo.simpl, aes(x=drug, y=N, fill=month.abb[Month])) + geom_bar(stat="identity") +scale_fill_brewer(name="Month") + theme(panel.background= element_rect(fill="dark grey", colour="white")) + ylab("Incidents") + xlab("Drug") + ggtitle('SF Illegal Narcotic Sale Incidents by Month & Drug')

