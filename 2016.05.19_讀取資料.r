### 讀取資料
# 除了在R直接輸入資料外，匯入外部資料毋寧是較常見的做法。這裡介紹如何將辛苦蒐集來的資料匯入R，常用語法的包含：
# 基本函數
# read.csv()	讀取csv資料
# read.table()	讀取ASCII資料 
# dim()	顯示變數與個案數
# names()	顯示變數名稱 
# head()	顯示資料檔或物件的開頭 
# ls()	顯示目前作用中的資料集/物件名稱
# rm()	移除目前作用中的資料集/物件 
data1 = read.csv("D:/Dropbox/Big_data_develop_class/R/RStudio_Project/data/customer.csv", header=T, sep=",")
# 100 rows 18 columns
dim(data1)

# 有欄位名稱的csv資料匯入
data2<-read.table("D:/Dropbox/Big_data_develop_class/R/RStudio_Project/data/customer_head.txt", header=T, sep=";")
names(data2)
dim(data2)

# 沒有欄位名稱的csv資料匯入
data3<-read.table("D:/Dropbox/Big_data_develop_class/R/RStudio_Project/data/customer_short.txt", header=F, sep=";")
names(data3)
names(data3)<-c("region","gender","age","edcat","jobcat","employ","income")
names(data3)
# 除dim()、names()與head()可檢視資料外，我們也可以直接輸入物件名稱來檢視全部資料。
data3


# 顯示/移除物件
# 在上面讀取資料的過程中創造了三個資料集(data frame)，分別是data、data1與data2。
# 這三個資料集都已儲存於記憶體中，可單獨呼叫、存取與分析。如果確定已無需使用則可刪除。
# 以ls()來顯示目前儲存於記憶體中的資料框架與物件，以rm()來移除物件。
ls()
ls(data1)
# 移除物件
rm(data1)
ls()








