class Sulfuras < Item
  def initialize(sell_in, quality)
    super('Sulfuras, Hand of Ragnaros', sell_in, quality)
  end

  def compute_update_quality; end

end
