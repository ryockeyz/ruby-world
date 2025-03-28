# 繰り返し処理
# while
# 条件が真の間繰り返す
num = 0
while num < 2
  puts num
  num += 1
end

# until
# 条件が偽の間繰り返す
num = 2
until num <= 0
  puts num
  num -= 1
end

# for
# 繰り返しが1回行われるごとにオブジェクトに対してeachメソッドを実行
# for文に指定できるオブジェクトはeachメソッドを持ったオブジェクトでなければならない（配列やハッシュ、範囲オブジェクトなど）
for num in 1..3
  puts num
end

# 範囲オブジェクト
# first..last 最後の値まで含まれる
# first...last 最後の値は含まれない
for num in 5..10
  puts num
end

for num in "g"..."j"
  puts num
end
# Rangeオブジェクトを使って範囲オブジェクトを作成
# Range.new(first,last[, exclude_end]) exclude_endはtrueの場合は最後の値を含めない
for num in Range.new(11, 15, true)
  puts num
end

# for文における範囲オブジェクトの扱いについて
# 渡した値の次の値がどうなるかは渡したオブジェクトに定義されているsuccメソッドによる
# Integerの場合は次の数字は1加算した値
# 文字列の場合はaだったらb、azだったらba
# floatクラスなどはsuccメソッドを持っていないのでfor文に渡すとエラーになる
for num in "ax"..."bc"
  puts num
end

# eachメソッド
# オブジェクトに含まれる要素を succ メソッドで順に取得して変数に格納し、無くなるまで繰り返し行われる
(5..10).each do |num|
  puts num
end
