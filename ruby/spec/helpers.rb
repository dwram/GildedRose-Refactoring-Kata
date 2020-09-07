def sulfuras_item(sell_in, quality, name = 'Sulfuras, Hand of Ragnaros')
  [Item.create_item(name, sell_in, quality)]
end

def aged_brie_item(sell_in, quality, name = 'Aged Brie')
  [Item.create_item(name, sell_in, quality)]
end

def backstage_item(sell_in, quality, name = 'Backstage passes to a TAFKAL80ETC concert')
  [Item.create_item(name, sell_in, quality)]
end

def item(sell_in, quality, name = 'foo')
  [Item.create_item(name, sell_in, quality)]
end