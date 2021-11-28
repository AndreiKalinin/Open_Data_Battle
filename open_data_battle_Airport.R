library(dplyr)

df <- read.csv('Science.csv')[1:144,]
df <- arrange(df, Year, Month)

# Построим модель ARIMA и сделаем пргноз на 12 месяцев

fit <- arima(df$Passengers, order = c(0, 1, 2),
             seasonal = list(order = c(0, 1, 2), period = 12))
predict(fit, 12)
