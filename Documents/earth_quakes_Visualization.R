#Earth quake dataset visualization
e_quakes<-datasets::quakes
e_quakes

#Top and bottom 5 values
head(e_quakes,5)

tail(e_quakes,5)

summary(e_quakes)

plot(e_quakes$lat)

plot(e_quakes$stations)

#points visualization
plot(e_quakes$lat,e_quakes$long,xlab='latitude',ylab='longitude',col='red',type='p')

#line visualization
plot(e_quakes$lat,e_quakes$long,xlab='latitude',ylab='longitude',col='red',type='l')

plot(e_quakes$depth,main='depth visualization')


#Barplot
barplot(e_quakes$depth,main='depth plot',ylab='depth',col='red',horiz=F,axes=T)

#Histogram
hist(e_quakes$mag,col='red')

#boxplot
boxplot(e_quakes$mag,main='boxplot')

boxplot(e_quakes[,1:3])


#deviding graph output screen to9 squares
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty='o')
plot(e_quakes$stations)
plot(e_quakes$lat)
plot(e_quakes$long)
plot(e_quakes$mag)
plot(e_quakes$depth)











