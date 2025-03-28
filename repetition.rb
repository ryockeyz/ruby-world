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
# イテレータのひとつ
(5..10).each do |num|
  puts num
end

# timesメソッド
# Integer クラスで用意されているメソッド
# 変数に0から「オブジェクト - 1」までの整数を順に代入しながらブロック内の処理を実行する
5.times do
  puts "Hello"
end

# uptoメソッド
# Integer クラスで用意されているメソッド
# 指定した開始数から最大数まで1つずつ増加しながら繰り返し処理を行う
# オブジェクトに指定した数値が max よりも大きい場合は繰り返し処理は行われない
# | 変数 | の部分は省略可能
5.upto(10) do |num|
  puts num
end

# downtoメソッド
# Integer クラスで用意されているメソッド
# 指定した開始数から最小数まで 1 つずつ減らしながら繰り返し処理を行う
# オブジェクトに指定した数値が min よりも小さい場合は繰り返し処理は行われない
# | 変数 | の部分は省略可能
7.downto(3) do |num|
  puts num
end

# stepメソッド
# Numericクラスで用意されているメソッド
# IntegerだけでなくFloatでも使用可能
# オブジェクト.step(limit, stepno) do |変数|
# 1. オブジェクトで渡した数値を変数に代入し処理を実行
# 2. 変数の値にstepnoの値を加算
# 3. 変数の値がlimitを超えたら実行せず終了
# stepnoは省略可能でその場合1を指定したことになる。負の値も指定可能
# limitとstepnoは浮動小数も指定可能
2.4.step(5.3, 0.8) do |num|
  puts num
end

# loopメソッド
# Kernelモジュールで用意されているメソッド
# 繰り返し回数に制限のない場合に使用
# 無限ループするので、必ず終了する処理を記述する必要がある
num = 1
loop {
  puts num
  num *= 2
  if num > 1024
    break
  end
}

# break文
# 繰り返し処理から抜ける際に使用
# 対象繰り返し処理（while、until、for、イテレータ（each、times、loopなど））

# next文
# 繰り返し処理の中でnext文が置かれると、next文後の処理は行わずに次の繰り返しに進む
# 対象繰り返し処理（while、until、for、イテレータ（each、times、loopなど））
# 複数の繰り返し処理が入れ子になっている場合、next文が実行された内側の繰り返しが次の繰り返しに進
count = 0
("aa".."az").each do |str|
  count += 1
  if count % 3 != 0
    next
  end
  puts str
end
