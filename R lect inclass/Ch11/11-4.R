rm(list=ls())

if (!require("car")) {
  install.packages("car")
}
  
library(car)
head(Prestige)
str(Prestige)
class(Prestige)
sum(is.na(Prestige))
Prestige[!complete.cases(Prestige), ]
Prestige[order(Prestige$prestige, decreasing=T), ]

newdata <- Prestige[,c(1:4)]        # 회귀식 작성을 위한 데이터 준비
plot(newdata, pch=16, col="blue",   # 산점도를 통해 변수 간 관계 확인
     main="Matrix Scatterplot")
pairs(newdata)

mod1 <- lm(income ~ education + prestige + women, # 회귀식 도출
           data=newdata)
summary(mod1)
