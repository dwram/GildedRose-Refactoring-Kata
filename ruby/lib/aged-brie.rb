class AgedBrie < Item
  def initialize(sell_in, quality)
    super('Aged Brie', sell_in, quality)
  end

  def compute_update_quality
    reduce_sell_in
    increase_quality if @quality < 50
    increase_quality if @sell_in.negative? && @quality < 50
  end
end
