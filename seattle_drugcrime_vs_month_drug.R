#load data
library(data.table)
library(gdata)
seattle = read.csv("seattle_incidents_summer_2014.csv")
stl.dt <- data.table(seattle)
stl.narc <- stl.dt[startsWith(stl.dt$Offense.Type, 'NARC-SELL'), ]
stl.narc.mo <- stl.narc[, length(Year), by=c('Offense.Type', 'Month')]
drug = gsub("NARC-SELL-", "", stl.narc.mo$Offense.Type)
stl.narc.mo = cbind(stl.narc.mo, drug)
setorder(stl.narc.mo, drug, Month)

#plot finding
library(ggplot2)
ggplot(data=stl.narc.mo, aes(x=drug, y=V1, fill=month.abb[Month])) + geom_bar(stat="identity") +scale_fill_brewer(name="Month") + theme(panel.background= element_rect(fill="dark grey", colour="white")) + ylab("Incidents") + xlab("Drug") + ggtitle('Seattle Illegal Narcotic Sale Incidents by Month & Drug')

