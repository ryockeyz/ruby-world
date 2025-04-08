# ハッシュオブジェクトの作成
hash1 = {"Red" => 1, "Blue" => 2, "Green" => 3}
puts hash1

# ハッシュオブジェクトから値を取得
# 存在しないキーを指定するとnilが返却される
p hash1["Red"]
p hash1["Blue"]
p hash1["Yellow"]

# fetchメソッドを使って値を取得
# ハッシュオブジェクト.fetch(key[, default])
# keyが存在せずdefaultが設定されていたらその値を返す
p hash1.fetch("Red")
p hash1.fetch("Blue")
p hash1.fetch("Yellow", "Error")
