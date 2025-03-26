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
