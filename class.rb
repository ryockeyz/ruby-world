# アクセスメソッド
# インスタンスメソッドへの参照や更新を簡単にできるようにアクセスメソッドが用意されている
# attr_reader :変数名	参照が可能
# attr_writer :変数名	更新が可能
# attr_accessor :変数名	参照と更新が可能
class Car
  # 定数
  # 大文字始まりで定義すると定数になる、すべて大文字で書くことが多い
  # メソッド内には定義できない
  MAKER = "toyota"

  def initialize(car_name = "未定義")
    @name = car_name
  end
  attr_accessor :name
end

car = Car.new()
car.name = "crown"
puts car.name
puts Car::MAKER
