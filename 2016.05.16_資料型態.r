# R語言的變數有以下幾種基本的資料型態(data types)：
    # 整數(Integer)
    # 浮點數(Number, real, double)
    # 複數(Complex)
    # 字串(Character)
    # 邏輯值(Logical)

#印出資性型態的方法
typeof()
class()

# character
class("test")
# numeric
class(10.10)
# numeric
class(10)
# integer
    # 因為 R 計算上是都是以雙倍精確度來計算，所以必須指定為 integer，不然都會被當成 numeric
    as.integer(3.1)
    # as.integer 可以將不是整數的數值變成整數，無條件捨去法
    class(as.integer(3.1))
    # as.integer(T) = 1
    class(as.integer(T)) 
    # as.integer(T) = 0
    class(as.integer(F))
# Complex
class(2+2i)

class(TRUE) # 注意都要大寫，不可寫成 True、ture，但可以簡化成 T
class(T)
class(FALSE) # 注意都要大寫，不可寫 False、false，但可以簡化成 F
class(F)