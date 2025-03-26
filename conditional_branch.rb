# 条件分岐
# if文
num = 5
if num != 0
  puts "#{num}です"
end

# 擬似変数
# self：クラスメソッドの中ではクラス自身、インスタンスメソッドの中ではインスタンスを表す
# __FILE__：現在のソースファイル名
# __LINE__：現在のソースファイルの中の行番号
# __ENCODING__：ソースファイルの文字コード
# true：真、falseとnilは偽を表す（falseとnil以外は全て真）
if num
  puts "#{num}です"
end

# 関係演算子
# == 等しい
# != 等しくない
# > より大きい
# >= 以上
# < より小さい
# < 以下
# オブジェクトが等しいかを比較しているわけではなく、オブジェクトの値が等しいかを比較している
c1 = "Red"
c2 = "Red"
if c1 == c2
  puts "2つの変数は等しい"
end
# 文字列の比較は、比較する2つの文字列をアルファベット順に並べて比較。 "a"は"b"よりも小さく、"A"は"a"よりも小さい
val = "Jan"
if val > "Feb"
  p "JanはFebより大きい"
end

# 論理演算子
# && 両方とも真なら真 andという演算子もあるが演算子の優先順位が低くなっている
# || どちらか真なら真 orという演算子もあるが演算子の優先順位が低くなっている
# ! 真の時偽、偽の時真 notという演算子もあるが演算子の優先順位が低くなっている
# Rubyでは左か右へ条件式を評価していき、式全体の評価が確定した場合はその時点で残りの評価を行わない
old = 25
if old < 40 && old > 20
  p "20から40までの間です"
end

# 演算子の優先順位
# (優先順位が高い)
#   !  ~
#   **
#   *  /  %
#   +  -
#   <<  >>
#   &
#   |  ^
#   >  >=  <  <=
#   ==  !=
#   &&
#   ||
#   ..  ...
#   ?:
#   =
#   not
#   and  or
# (優先順位が低い)
# 意図しない順番にしないためには先に行い処理を括弧で囲ってあげる必要がある
num = 10
if !(num > 20)
  puts "20以下です"
end

# else
num = (10 % 3)
if num == 0
  puts "割り切れた"
else
  puts "割り切れなかった"
end

# elsif
city = "Nagoya"
if city == "Tokyo"
  puts "東京"
elsif city == "Osaka"
  puts "大阪"
elsif city == "Nagoya"
  puts "名古屋"
else
  puts "日本"
end

# unless
old = 40
unless old < 20
  puts "20以上です"
end

# case
fruit = "Apple"
case fruit
when "Orange"
  puts "オレンジ"
when "Apple"
  puts "りんご"
when "Melon"
  puts "メロン"
else
  puts "フルーツ"
end
# まとめて比較
food = "Apple"
case food
when "Apple","Orange"
  puts "フルーツ"
when "Carrot", "Potato"
  puts "野菜"
end

# 条件演算子（三項演算子）
result = 80
puts result > 60 ? "合格" : "不合格"

# 式修飾子
point = 80
puts "合格" if point > 70
puts "不合格" unless point > 90
