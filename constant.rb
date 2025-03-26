# 定数
# 1文字目が大文字目のものは定数と判定される（2文字目以降は小文字でも良い）
# 全て大文字で記述するのが慣例
# 定数は基本的に変更をしない（変更すると警告が表示される）
PI = 3.14
menseki = 5 * 5 * PI
puts menseki

# 組み込み定数
# Rubyであらかじめ定義されている定数
# RUBY_で始まる定数はRubyに関する情報が格納されている
puts RUBY_COPYRIGHT
# STDIN、STDOUT、STDERRはそれぞれ標準入力、標準出力、標準エラー出力を表すもので、それぞれ$stdin、$stdout、$stderrのデフォルト値
# ENVは環境変数を表す連想配列が格納されている
p ENV
# 引数
# ARGVはRubyスクリプトに与えられた引数を表す配列が格納されている
p ARGV
