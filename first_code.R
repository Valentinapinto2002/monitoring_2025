install.packages("terra")
library(terra) #package used for remote sensing data

#importing data
#Windows
setwd("C:/Users/pinto/OneDrive/Desktop")

#mato grosso nel 1992
mato29=rast("Matogrosso_l5_1992219_lrg.jpg")
plot(mato)
#bands
#band1= near infrared
#band2= red
#band3= green

plotRGB(mato, r=2, g=3, b=1)
#siccome la vegetazione riflette l'infrarosso vicino, banda che abbiamo montato sulla componente blu, tutto ciò che è blu nell'immagine è vegetazione

#variamo la posizione dell'infrarosso vicino, mettendola sulla banda verde
plotRGB(mato, r=2, g=1, b=3) 
#ora quello che è verde è vegetazione


#variamo la posizione dell'infrarosso vicino, mettendola sulla banda rossa
plotRGB(mato, r=1, g=2, b=3) 
#ora quello che è rosso è vegetazione

#mato grosso nel 2006
mato06=rast("Matogrosso_ast_2006209_lrg.jpg")
