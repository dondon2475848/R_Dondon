# 變數
i<-5
j<-2
i+j
x=2
y=3
x+y

a=b=1
a+b

# R 的變數可以重複給予值，不會因為資料屬性的不同而發生錯誤，會因最後所給予的值為結果。
# 所以程式碼複雜時，常常會因為一個變數重複給予不同的值而發生錯誤，這時可以用 exists 函數檢查。
x=1
x
z=1.3
x
x=1+2i
x
typeof(x)
x="dondon so cool!"
x
x=FALSE
x
z=10
exists("z")

# NA 與 NULL
# NA 代表是個空物件，已經有物件但是裡面沒東西，NULL 則是根本沒有任何東西，更詳細比較請參考 R Bloggers R : NA vs. NULL
# http://www.r-bloggers.com/r-na-vs-null/





