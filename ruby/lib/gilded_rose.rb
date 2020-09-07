class GildedRose
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      compute_update_quality(item)
    end
  end

  private

  def compute_update_quality(item)
    if item.name == 'Aged Brie'
      if item.quality < 50
        item.quality = item.quality + 1
      end
      item.sell_in = item.sell_in - 1
      if item.sell_in < 0 && item.quality < 50
        item.quality = item.quality + 1
      end
    end
    if item.name == 'Backstage passes to a TAFKAL80ETC concert'
      if item.quality < 50
        item.quality = item.quality + 1
        if item.sell_in < 11 && item.quality < 50
            item.quality = item.quality + 1
        end
        if item.sell_in < 6 && item.quality < 50
            item.quality = item.quality + 1
        end
      end
      item.sell_in = item.sell_in - 1
      item.quality = item.quality - item.quality if item.sell_in.negative?
    end
    if item.name != 'Aged Brie' && item.name != 'Backstage passes to a TAFKAL80ETC concert' && item.name != 'Sulfuras, Hand of Ragnaros'
      if item.quality > 0
        item.quality = item.quality - 1
      end
      item.sell_in = item.sell_in - 1
      item.quality = item.quality - 1 if item.sell_in < 0 && item.quality > 0
    end
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end