# 変数
# Rubyにおいて変数はオブジェクトが格納されている場所を格納している
# 変数にデータ型はない
# 変数を利用する際に宣言は必要ない、変数に代入を行うと自動で宣言したことになる
msg = "Hello"
puts msg
num = 5 * 4 + 3
puts num
# 変数名の付け方
# 1文字目は英小文字かアンダーバー
# 予約後は使用できない
# ローカル変数：変数名が小文字または_で始まる
# インスタンス変数：変数名が@で始まる
# クラス変数：変数名が@@で始まる
# グローバル変数：変数名が$で始まる
# 定数：アルファベット大文字で始まる

# 変数に別のオブジェクトを代入
# Rubyでは変数に最初に宣言したオブジェクトとは別の種類のオブジェクトを代入することもできる
msg = "Hello"
puts msg
msg = "Bye"
puts msg
msg = 100
puts msg

# 変数に別の変数を代入する
# 同じ値でも別のオブジェクト（ただし、整数の値やtrueなどは同じオブジェクト）
v1 = "Tokyo"
v2 = "Tokyo"
puts v1.object_id
puts v2.object_id
# 変数に別の変数を入れた場合は同じオブジェクトを見に行く
v1 = "Tokyo"
v2 = v1
puts v1.object_id
puts v2.object_id
# なので、どちらかの変数を使ってオブジェクトを変更するともう片方にも影響する
v1 = "Tokyo"
v2 = v1
puts v1
puts v2
v1 << "Japan"
puts v1
puts v2

# 変数に対して演算を行う
num = 10
sum = num + 20
puts sum

num1 = 10
num2 = 8
num3 = 15
sum = num1 + num2 + num3
puts sum

# 変数に対して自己代入を行う
num = 10
puts num
num = num + 1
puts num
# 自己代入演算子
# 演算子の前に+をつけることで簡潔に記述できる
num100 = 100
num100 += 1
puts num100

# 変数へ多重代入を行う
v1, v2, v3 = "Tokyo", "Osaka", "Kyoto"
puts v1, v2, v3
# 右辺に記述したオブジェクトが足りない場合はnilが代入される
v4, v5, v6 = "Fukuoka", "Hokkaido"
p v4, v5, v6
