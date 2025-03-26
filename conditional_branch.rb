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
