library(tidyverse)
library(sqldf)
library(ggplot2)

reviews <- read_csv("C:\\Users\\maiya\\OneDrive\\������� ����\\���\\r\\7282_1.csv")
view(reviews)


results <- sqldf("SELECT round([reviews.rating]) as score from reviews WHERE round([reviews.rating]) > 0 and round([reviews.rating]) < 6")
view(results)


tab <- table(reviews$'name')

colors = c('firebrick', 'darkorange', 'gold', 'greenyellow', 'limegreen')

hist(results$score,
     col = colors[results$score],
     las = 1,
     xlab="������ ������������", 
     ylab = "���������� �������", 
     main = "����������� ������� �� �������")

plot(table(results$score), type = "h", col = colors, lwd=15,
     xlab="������ ������������", 
     ylab = "���������� �������", 
     col.main = "#47249f",
     col.sub = "#47249f",
     col.lab = "#47249f",
     col.axis = "#47249f",
     fg = "#FFC055",
     main = "����������� ������� �� �������")

