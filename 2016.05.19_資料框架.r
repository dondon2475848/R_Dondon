# 資料框架
# 利用 data.frame 建立資料框架
# 資料框架類似資料表，常當作大量資料集，例如：匯入外部檔或讀取資料庫資料等。
name <- c("Joe", "Bob", "Vicky","Dondon","David","Bob","Ziv")
age <- c("28", "26", "34","20","34","58","40")
gender <- c("Male","Male","Female","Male","Male","Female","Male")
data <- data.frame(name, age, gender)
# 自動點選 data 變數就會開啟資料的畫面。
View(data) 

# 透過指標與名稱提取資料
# 資料框架的提取資料方法跟矩陣或陣列的都很類似。
data
data[1,]
data[,1]
data[2, 1]
data[,"name"]
data[1:2,"name"]
data$name[2:3]


### 基本相關函數
# head：取得資料框架前六比資料(預設是 6)。
# names：修改或查詢 column 名稱。
# colnames：設定 column 名稱。
# row.names：修改或查詢 row 名稱。
# rownames：設定 row 的名稱
# summary：顯示資料基本資訊。

data
# 取得資料框架前六比資料(預設是 6)。
head(data)

head(data, 7L) # 只顯示第一筆資料。
names(data)
names(data) <- c("n", "a", "g")
names(data)
colnames(data)
row.names(data)
rownames(data)
summary(data)




























