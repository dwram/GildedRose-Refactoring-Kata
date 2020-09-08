class GildedRose
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each(&:compute_update_quality)
  end

end
