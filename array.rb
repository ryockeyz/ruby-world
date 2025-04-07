# 配列オブジェクトの作成
ary = [1, 2, 3, 4, 5]
p ary

# 配列のインデックス
# 0始まり
# -1は一番最後、-2は最後から2番目とマイナスの場合は後ろから数える
# atメソッドでインデックスを指定することもできる
p ary[0]
p ary[-1]
p ary[-2]
p ary.at(2)

# Arrayクラスを使ったArrayオブジェクトの作成
# オブジェクトをカンマ区切りで指定する方法：Array[item, ...]
ary1 = [1, 2, 3, 4, 5]
# newを使って要素数を指定する方法：Array.new([size[, val]]))
# 要素数だけを指定する場合は、各要素には初期値としてnilが代入される
ary2 = Array.new(3)
p ary2
# 要素数を省略した場合は空の配列オブジェクトが作成される
ary3 = Array.new
p ary3
# 作成と同時にオブジェクトを指定することも可能
# ただし、この場合はすべての要素に同じオブジェクトが代入される
# また、各要素は同じオブジェクトを参照していることに注意
ary4 = Array.new(3, "Red")
p ary4
# ブロック付きのクラスメソッドのnewを使用した方法：Array.new(size){|index|...}
# この方法で作成する場合、各要素は別のオブジェクトを参照している
ary5 = Array.new(3, "Blue")
p ary5
# 他の配列オブジェクトを引数に指定する方法：Array.new(ary)
# 元になった配列と複製された配列の同じ位置にある要素は同じオブジェクトを参照している
ary6 = ["Green", "Green"]
ary7 = Array.new(ary6)
p ary6
p ary7

# 配列の指定した要素へオブジェクトを代入
ary8 = [1, 2, 3, 4, 5]
p ary8
ary8[1] = 22
p ary8

# 配列のサイズの取得
ary9 = [1, 2, 3, 4, 5]
p ary9.length
p ary9.size
# また、nilを含まないサイズを取得する場合はcountメソッドを使用
ary10 = [1, nil, 3]
p ary10.length
p ary10.count {|item| !item.nil?}

# 配列のサイズの拡大
# 最大のインデックスよりも大きな要素を指定して代入した場合、自動で拡張される
ary11 = [1, 2, 3]
p ary11
ary11[3] = 4
p ary11
ary11[5] = 6
p ary11

# 配列に対する繰り返し処理
# for文
ary12 = ["Red", "Blue", "Green"]
for var in ary12 do
  puts var
end
# each文
ary12.each {|var|
  puts var
}

# 多重配列の要素の取り出し
ary13 = [["A", 1], ["B", 2], ["C", 3]]
p ary13
p ary13[0]
p ary13[0][0]
p ary13[0][1]
p ary13[1]
p ary13[1][0]
p ary13[1][1]
p ary13[2]
p ary13[2][0]
p ary13[2][1]
