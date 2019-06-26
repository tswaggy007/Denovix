#Code for ggplot on Denovix DS-11 
#To check my margin range
library(reshape)
par('fin')
Output:[1] 8.979167 5.791667
#To check the margins: Bottom, Left, Top and Right respectively wrt to # of lines of text
par('mar')
[1] 5.1 4.1 4.1 2.1
#To check the margins: Bottom, Left, Top and Right respectively wrt to inches
par('mai')
[1] 1.02 0.82 0.82 0.42
#inches per line of text
par('mai')/par('mar')
[1] 0.2 0.2 0.2 0.2
#Plot 1:10 and placed text in margins to measure it
plot(1:10,ann=FALSE,type=”n”,xaxt=”n”,yaxt=”n”)
for(j in 1:4) for(i in 0:10) mtext(as.character(i),side=j,line=i)
#To remove the commas in numerical fields
for (i in 1:ncol(cows)){
  if(length(grep(“,”,cows[[i]]))>0)
    cows[[i]] <- as.numeric(gsub(",", "", cows[[i]]))
}
#Increase the margin to accomodate axis labels
par(mar=c(5,6,4,2)+0.1,mgp=c(5,1,0))
plot(cows$Total.milk.production~cows$Year,las=1,xlab=”Year”, ylab=”Total Milk Production (in pounds?)”)
#Increase the margins for x-labels
par(mar=c(5,6,4,2)+0.1)
plot(cows$Total.milk.production~cows$Year,las=1,xlab=”Year”, ylab=””)
mtext(“Total Milk Production (in pounds?)”,side=2,line=5)
#View number of rows
liverPM3 = spec[1,21:151] 
#Filter a row using dplyr package
filter(spec, Sample.Name == "Liver PM/3 RNA 04-18")
#Select a column using select
select(spec, Sample.Name)
library(tidyr)
test = gather(LiverPM3)
demoztpmr3 = cbind(test,wl)
plot(demoztpmr3$value ~ demoztpmr3$wl)
ggplot(demoztpmr3, aes(x=wl, y=value, color=value)) + geom_line()

> p1 = ggplot(comp, aes(x=wl)) + geom_line(aes(y=pm3, color='pm3')) + geom_line(aes(y=value, color='value'))
> p1 = ggplot(comp, aes(x=wl)) + geom_line(aes(y=pm3, color='pm3')) + geom_line(aes(y=value, color='zt2'))
names(t11) = c('key','pm3')
comp$key = NULL
Data = subset(Data, select = -a)
Data = Data[,-2]
zt2al$key = NULL
#Clean code of converting data into columns
#select row 2 columns 21:151 
ztpmal2 = spec[7,21:151] 
ztpmal2
ztpmal = gather(ztpmal2)
ztpmal
ztpmal$key = NULL
ztpmal
names(ztpmal) = c('ztpmal2')
rm(ztpmal2)
Denovix = cbind(zt22,ztpmal)
rm(ztpmal)
Denovix
rm(zt22)
saveRDS(Denovix, file = 'Circadian_Data.rds')
readRDS(file = 'Circadian_Data.rds')
save.image(file = 'Denovix.workspace.RData')
load('Denovix.workspace.RData')
p1 = ggplot(Denovix, aes(x=wl)) + geom_line(aes(y=zt2al1, color='zt2al1')) + geom_line(aes(y=zt6al2, color='zt6al2')) + geom_line(aes(y=zt10al2, color='zt10al2')) + geom_line(aes(y=zt14al2, color='zt14al2'))  + geom_line(aes(y=zt18al2, color='zt18al2')) + geom_line(aes(y=zt22al2, color='zt22al2')) + geom_line(aes(y=ztpmal2, color='ztpmal2')) + labs(title = '                                                                                                              
            Absorbance vs Wavelength', x = 'Wavelength', y='10 mm Absorbance', color='Circadian Times')
p1
library(ggplot2)
print(p1 + theme(plot.title = element_text(hjust = 0.5)))
theme_update(plot.title = element_text(hjust = 0.5))
theme_set(theme_linedraw())


