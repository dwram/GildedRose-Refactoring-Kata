require_relative './item-interface'

class BackStagePass < Item
  def initialize(sell_in, quality)
    super('Backstage passes to a TAFKAL80ETC concert', sell_in, quality)
  end
end