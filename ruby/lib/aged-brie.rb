require_relative './item-interface'

class AgedBrie < Item
  def initialize(sell_in, quality)
    super('Aged Brie', sell_in, quality)
  end
end
