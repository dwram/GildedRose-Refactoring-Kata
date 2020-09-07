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
    case item.name
    when 'Aged Brie'
      item.reduce_sell_in
      item.increase_quality if item.quality < 50
      item.increase_quality if item.sell_in.negative? && item.quality < 50
    when 'Backstage passes to a TAFKAL80ETC concert'
      if item.quality < 50
        item.increase_quality
        item.increase_quality if item.sell_in < 6 && item.quality < 50
        item.increase_quality if item.sell_in < 11 && item.quality < 50
      end
      item.reduce_sell_in
      item.reset_quality if item.sell_in.negative?
    when 'Sulfuras, Hand of Ragnaros'
      ''
    else
      item.reduce_sell_in
      item.reduce_quality if item.quality.positive?
      item.reduce_quality if item.quality.positive? && item.sell_in.negative?
    end
  end

end
