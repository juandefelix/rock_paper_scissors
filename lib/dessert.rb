class Dessert

  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = "#{flavor} jelly bean"
    @calories = 5
  end

  def delicious?
    @flavor == "licorice" ? false : true
  end
end



# subject = Dessert.new('cake', 400)
# p subject.calories == 400
# p subject.name == 'cake'
# p subject.delicious? == true
# p subject.healthy? == false
# puts
# subject = Dessert.new('apple', 75)
# p subject.delicious? == true
# p subject.healthy? == true
# puts
# dessert = Dessert.new('xxx', 0)
# dessert.calories = 80
# p dessert.calories == 80
# dessert.name = 'ice cream'
# p dessert.name == 'ice cream'
# puts
# subject = JellyBean.new('vanilla')
# p subject.calories == 5
# p subject.name.match /vanilla jelly bean/i
# p subject.delicious? == true
# puts
# subject = JellyBean.new('licorice')
# p subject.delicious? == false