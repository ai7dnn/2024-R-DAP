mydata <- iris[,1:4]    # 데이터 준비
head(mydata)

mydata <- iris[,1:4]    # 데이터 준비
fit <- kmeans(x=mydata, centers=3)
fit
# class(fit)

fit$cluster             # 각 데이터에 대한 군집 번호
fit$centers             # 각 군집의 중심점 좌표

# 차원 축소 후 군집 시각화
library(cluster)
clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=2, lines=0)

clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=1, lines=0)

clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=1, lines=1)

clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=2, lines=1)

# 데이터에서 두 번째 군집의 데이터만 추출
subset(mydata, fit$cluster==2)
subset(mydata, fit$cluster==1)
subset(mydata, fit$cluster==3)

############## 정확도(accuracy) 계산
iris.sp = iris$Species
levels(iris.sp) = c(1, 2, 3)
iris.sp

mean(iris.sp == fit$cluster)

