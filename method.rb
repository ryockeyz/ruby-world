# トップレベル
# Rubyではソースコードの一番外側の部分をトップレベルと呼ぶ
# トップレベルには式の記述やメソッド・クラスの定義ができる

# selfとmain
# selfは擬似変数
# selfを実行するとmainというオブジェクトを返す
puts self.to_s
# mainはObjectクラスのインスタンス
puts self.class.to_s
# トップレベルで定義したメソッドはObjectクラスのprivateインスタンスメソッドとして定義される
# Objectクラスのインスタンスメソッドなので、どこからでも呼び出せる

# メソッドの定義と呼び出し
# ルール1：1文字目は英文字かアンダーバー
# ルール2：2文字目以降は英数文字かアンダーバー
# 大文字から開始することも可能、あまり大文字からは始めない、大文字はじまりの場合カッコは省略できない
def printHello
  puts "Hello"
end
printHello

# 引数ありのメソッド呼び出し
# メソッドを呼び出す側で指定した引数を「実引数」、メソッド定義側で記述した引数を「仮引数」と呼ぶこともある
def printStr str
  puts str
end
printStr "Hello"

def printMsgName name, msg = "Hello"
  puts "#{msg}, #{name}"
end
printMsgName "taro"
printMsgName "taro", "Goodbye"

def addString str
  str << ", Japan"
end
