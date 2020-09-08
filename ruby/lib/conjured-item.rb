class ConjuredItem < Item
  def initialize(sell_in, quality)
    super('Conjured Item', sell_in, quality)
  end

  def compute_update_quality
    2.times do
      reduce_sell_in
      reduce_quality if @quality.positive?
      reduce_quality if @quality.positive? && @sell_in.negative?
    end
  end

end
