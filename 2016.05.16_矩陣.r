### 陣列
# 利用 rbind、cbind 與 array 函數建立陣列
# 陣列可視為多維度的向量變數，跟向量一樣，所有陣列元素的資料屬性必須一致。

x=c(1,2,3)
y=c(4,5,6)
rbind(x,y)
cbind(x,y)

# c(1,3) 代表產生 1 x 3 陣列
array(x,c(1,3))
array(2,c(1,3))
# c(2,3) 代表產生 2 x 3 陣列
array(y,c(2,3))

# c(3,3) 代表產生 3 x 3 陣列
array(x,c(3,3)) 
array("Dondon",c(3,3)) 

# 透過指標提取資料
# 陣列與向量相同，可以透過指標或名稱選取陣列的元素。
x <- c(1, 2, 3)
y <- c(4, 5, 6)
z = rbind(x, y)
z

# 選取第一行(column、直)
z[,1]
# 選取第一列(row、橫)
z[1,] 
# 選取第一列第一到二行
z[1,1:2] 


### 基本相關函數
# 陣列加減乘除
# length：計算陣列中的所有元素個數。
# dim：列出維度資訊
# ncol、nrow：計算(column、直) 或 (row、橫) 個數。
# aperm：將陣列轉置
x <- c(1, 2, 3)
y <- c(4, 5, 6)
z = rbind(x, y)
z
# 加法
z+z
# 減法
4*z-z
# 相對應的陣列元素相乘
z * z 
# 相對應的陣列元素相除
z / z 

#陣列的元素個數
length(z)

# 前者是 row，後者是 column。
dim(z)
# column數
ncol(z)
# row數
nrow(z)
# 陣列轉置,等同是從 rbind 轉成 cbind
aperm(z) 

# 矩陣
# 利用 matrix 建立矩陣
# 當陣列是 2 維的狀況就是所謂的矩陣，可以利用 matix 產生矩陣，也可以用之前產生陣列的方法實作。

# 預設是按照 column 填入資料
matrix(c(1:4), nrow = 2, ncol = 2) 
# 可以更改成按照 row 填入資料
matrix(c(1:4), nrow = 2, ncol = 2, byrow = TRUE) 

###基本相關函數
# t(x)：將矩陣轉置。
# %*%：矩陣相乘。
# diag：產生一個對角矩陣，或回傳矩陣的對角線向量
# det：計算矩陣行列式值，一定是要對稱矩陣。
# solve：傳回矩陣的反矩陣，非常適合解線性方程式。
# eigen：計算矩陣的特徵向量與特徵值。
# rownames：修改或查詢 row 名稱。
# colnames：修改或查詢 column 名稱。
x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- rbind(x, y)
z
t(z)

# 矩陣相乘要符合前者 column 維度 = 後者 row 維度，如果沒有會發生錯誤！
# Error in z %*% z : non-conformable arguments
z %*% z 
v <- z %*% t(z)
v

# 傳入向量回傳一個對角矩陣
w <- diag(c(1,2,3))
w

# 傳入矩陣回傳矩陣對角線向量
diag(w) 

# 矩陣行列式值
# 一定要對稱矩陣才可以計算。
# 14*77-32*32
det(v) 
# 反矩陣
solve(v)
# 解 Ax = b，求出 x 向量
A=matrix(c(1:4), nrow = 2, ncol = 2) 
b = c(1,1) 
solve(A,b)
# 計算矩陣特徵值和特徵向量
u = matrix(1:9, nrow = 3, ncol = 3)
u
eigen(u)

z
# 還沒修改的時候，是 x 與 y，因為當初是利用兩個向量，利用 rbind 組成，所以會利用向量的變數名稱
rownames(z) 
rownames(z) = c("第一行", "第二行")
rownames(z) 
colnames(z)
colnames(z) <- c("第一列", "第二列", "第三列")
colnames(z)
z













