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
