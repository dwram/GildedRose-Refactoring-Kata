class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def self.create_item(name, sell_in, quality)
    Item.new(name, sell_in, quality)
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def reduce_sell_in(amount = 1)
    @sell_in -= amount
  end

  def reduce_quality(amount = 1)
    @quality -= amount
  end

  def reset_quality
    @quality = 0
  end

  def increase_quality(amount = 1)
    @quality += amount
  end

end




