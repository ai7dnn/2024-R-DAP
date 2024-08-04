install.packages("class")
library(class)

# 훈련용 데이터와 테스트용 데이터 준비
tr.idx <- c(1:25, 51:75, 101:125)   # 훈련용 데이터의 인덱스
ds.tr <- iris[tr.idx, 1:4]          # 훈련용 데이터셋
ds.tr
ds.ts <- iris[-tr.idx, 1:4]         # 테스트용 데이터셋
ds.ts

cl.tr <- factor(iris[tr.idx, 5])    # 훈련용 데이터셋의 그룹(품종) 정보
cl.tr
cl.ts <- factor(iris[-tr.idx, 5])   # 테스트용 데이터셋의 그룹(품종) 정보
cl.ts

####################################################
pred <- knn(ds.tr, ds.ts, cl.tr, k=3, prob=TRUE)
pred

acc <- mean(pred==cl.ts)            # 예측 정확도
acc

table(pred, cl.ts)                   # 예측값과 실제값 비교 통계

##################################################
pred <- knn(ds.tr, ds.ts, cl.tr, k=5, prob=TRUE)
pred

acc <- mean(pred==cl.ts)            # 예측 정확도
acc

table(pred, cl.ts)                   # 예측값과 실제값 비교 통계

##################################################
pred <- knn(ds.tr, ds.ts, cl.tr, k=7, prob=TRUE)
pred

acc <- mean(pred==cl.ts)            # 예측 정확도
acc

table(pred, cl.ts)                   # 예측값과 실제값 비교 통계

###################################
class(iris3)

train <- rbind(iris3[1:25,,1], iris3[1:25,,2], iris3[1:25,,3])
test <- rbind(iris3[26:50,,1], iris3[26:50,,2], iris3[26:50,,3])
cl <- factor(c(rep("s",25), rep("c",25), rep("v",25)))
cl
knn(train, test, cl, k = 3, prob=TRUE)
attributes(.Last.value)

