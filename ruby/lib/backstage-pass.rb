class BackStagePass < Item
  def initialize(sell_in, quality)
    super('Backstage passes to a TAFKAL80ETC concert', sell_in, quality)
  end

  def compute_update_quality
    if @quality < 50
      increase_quality
      increase_quality if @sell_in < 6 && @quality < 50
      increase_quality if @sell_in < 11 && @quality < 50
    end
    reduce_sell_in
    reset_quality if @sell_in.negative?
  end
end