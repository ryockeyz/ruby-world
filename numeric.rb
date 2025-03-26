# 整数
puts 10
puts 10.class
# 浮動小数
puts 3.14
puts 3.14.class
# マイナス
puts -10
puts -3.14
# 10進数
puts 214
# 2進数 先頭に0b
puts 0b11010110
# 8進数 先頭に0
puts 0326
# 16進数 先頭に0x
puts 0xD6
# 指数
puts 2.5e5
puts 2.5e-4
# アンダーバーを使った数値の3桁区切り
puts 3_420_500
# 四則演算
puts 6 + 3
puts 6 - 3
puts 6 * 3
puts 6 / 2
puts 5 % 2
puts 5 ** 2
# 演算子の優先度
# 優先度高 ** (* / %) (+ -) 優先度低 括弧で囲ったものは同じ優先度
# 括弧で囲まれたもののほうが優先度が高い
puts 5 + 3 * 2 ** 4 / 2 + (3 + 7)
