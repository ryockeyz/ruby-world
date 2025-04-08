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
# # 存在しないキーを指定した場合指定したdefault値を返すが、ハッシュには追加されない
hash4 = Hash.new("none")
puts hash4
p hash4["Red"]
# ブロック付きのnew：Hash.new {|hash, key| ...}
# キーごとのdefault値を設定することが可能
# 空のハッシュオブジェクトを作成
# 存在しないキーを指定した場合指定したdefault値を返しつつ、指定したキーとdefault値のペアでハッシュの最後尾に追加される
hash5 = Hash.new {|hash, key| hash[key] = "none"}
puts "hash5: #{hash5}"
p hash5["Red"]
puts "hash5: #{hash5}"
# 引数にハッシュオブジェクトを指定する方法：Hash[hash]
# コピー元とコピー先のハッシュのキーと値は同じオブジェクト
hash6 = Hash["Red" => 1, "Blue" => 2, "Green" => 3]
p hash6
hash7 = Hash[hash6]
p hash7
puts hash6["Red"].object_id
puts hash7["Red"].object_id

# ハッシュのデフォルト値の設定
# 設定方法は上記のfetchメソッドやHashクラスを使ったハッシュオブジェクトの作成で説明済み
# ハッシュのデフォルト値として返される値は毎回異なるオブジェクト

# newで作成した際にdefault値を設定していてfetchメソッドを使った場合default値は無視される
# そのため、存在しないキーを指定した場合はKeyErrorが発生する
hash8 = Hash.new("none")
# p hash8.fetch("Red") # KeyErrorが発生する処理

# defaultメソッド
# default値を取得したり設定できる
hash9 = Hash.new("none")
p hash9.default

hash9.default = "undefined"
p hash9.default

# ハッシュへの新しい要素を追加と値の変更
hash10 = {"Red" => 1, "Blue" => 2, "Green" => 3}
p hash10
hash10["Yellow"] = 4
p hash10
hash10["Yellow"] = 5
p hash10

# storeメソッドを使用
hash11 = {"Red" => 1, "Blue" => 2, "Green" => 3}
p hash11
hash11.store("Yellow", 4)
p hash11
hash11.store("Yellow", 5)
p hash11

# ハッシュのサイズを取得
hash12 = {"Red" => 1, "Blue" => 2, "Green" => 3}
p hash12.length
p hash12.size

# ハッシュに対する繰り返し処理
hash13 = {"Red" => 1, "Blue" => 2, "Green" => 3}
# eachメソッド
# 別名メソッドにeach_pairメソッドもある。使い方は同じ
hash13.each {|key, value|
  puts "#{key}: #{value}"
}

# each_keyメソッド
# keyだけ必要な時に使用
hash13.each_key {|key|
  puts "#{key}"
}

# each_valueメソッド
hash13.each_value {|value|
  puts "#{value}"
}

# ハッシュに含まれるキーや値を配列として取得
p hash13.keys
p hash13.values

# キーと値のペアの一覧を配列として取得
p hash13.to_a
