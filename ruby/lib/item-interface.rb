class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def self.create_item(name, sell_in, quality)
    case name
    when 'Aged Brie' then AgedBrie.new(sell_in, quality)
    when 'Backstage passes to a TAFKAL80ETC concert' then BackStagePass.new(sell_in, quality)
    when 'Sulfuras, Hand of Ragnaros' then Sulfuras.new(sell_in, quality)
    else; Item.new(name, sell_in, quality)
    end
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

# Had to add Sulfuras here because it was not being found for some odd reason

class Sulfuras < Item
  def initialize(sell_in, quality)
    super('Sulfuras, Hand of Ragnaros', sell_in, quality)
  end
end


