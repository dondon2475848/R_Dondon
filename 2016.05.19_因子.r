# 因子
# 利用 factor 建立因子
# 因子有點像經過分級之後的向量，因子大多可以用在統計上的迴歸分析與實際設計等。
x <- c(1, 2, 4, 3, 1, 2, 3, 4,1)
x2 = factor(x)
x2
x3=levels(x2)
x3

# 可自訂 Level 的名稱。
factor(x, labels = c("一", "二", "三", "四")) 
# ordered 代表可做排序
factor(x, ordered = TRUE)

factor(c(1, 2, 1, NA, 2), exclude = NA) # 可利用 exclude 排除特定資料。


factor(c(1, 2, 1, 3, 2, 3 ), exclude = 3) # 可利用 exclude 排除特定資料。

factor(c(1, 2, 1, NA, 2), exclude = NULL) # 不排除任何資料。

# [] 與 [[]] 結果一致，因為因子只有值沒有其他相關資料。
x[2] 
x[[2]] 
# 指標可以使用向量。
x[1:2] 
x[c(1, 3, 5)]


### 基本相關函數
# is.factor：判斷是否為因子。
# as.factor：將變數轉為因子。
# is.ordered：判斷是否為排序過的因子。
# as.ordered：將因子排序。
# which：找出符合條件的指標。
x <- c(1, 2, 4, 3, 1, 2, 3, 4,1)
as.factor(x)
is.factor(x)
is.factor(as.factor(x))
is.ordered(factor(x, ordered = TRUE))
is.ordered(factor(x, ordered = FALSE))
as.ordered(factor(x))

# 找出 x 等於 1 的指標
which(x == 1) 




















