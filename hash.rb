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

# Hashクラスを使用したハッシュオブジェクトの作成
# []を使用した形式：Hash[key,value,...]
# キーとオブジェクトを交互に指定していく
hash2 = Hash["Red", 1, "Blue", 2, "Green", 3]
puts hash2
# キー => 値という形式でも記述可能
hash3 = Hash["Red" => 1, "Blue" => 2, "Green" => 3]
puts hash3
# newを使用した方法：Hash.new([ifnone])
# 空のハッシュオブジェクトを作成
# ifnoneには存在しないキーを指定された時のdefault値を指定できる
hash4 = Hash.new("none")
puts hash4
p hash4["Red"]
# ブロック付きのnew：Hash.new {|hash, key| ...}
# 空のハッシュオブジェクトを作成
hash5 = Hash.new {|hash, key| hash[key] = "none"}
puts hash5
p hash5["Red"]
# 引数にハッシュオブジェクトを指定する方法：Hash[hash]
# コピー元とコピー先のハッシュのキーと値は同じオブジェクト
hash6 = Hash["Red" => 1, "Blue" => 2, "Green" => 3]
p hash6
hash7 = Hash[hash6]
p hash7
puts hash6["Red"].object_id
puts hash7["Red"].object_id
