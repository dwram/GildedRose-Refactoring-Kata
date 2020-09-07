def sulfuras_item(sell_in, quality, name = 'Sulfuras, Hand of Ragnaros')
  generate_item(sell_in, quality, name)
end

def aged_brie_item(sell_in, quality, name = 'Aged Brie')
  generate_item(sell_in, quality, name)
end

def backstage_item(sell_in, quality, name = 'Backstage passes to a TAFKAL80ETC concert')
  generate_item(sell_in, quality, name)
end

def item(sell_in, quality, name = 'foo')
  generate_item(sell_in, quality, name)
end

def generate_item(sell_in, quality, name)
  [Item.new(name, sell_in, quality)]
end