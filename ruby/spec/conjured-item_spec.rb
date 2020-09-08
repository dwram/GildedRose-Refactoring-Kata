require_relative './spec_helper'

describe ConjuredItem do

  context 'degrades twice as fast' do

    it 'sell in negative, quality positive' do
      gilded_rose = GildedRose.new(conjured_item(-1, 49))
      gilded_rose.update_quality
      expect(gilded_rose.items[0].to_s).to eq 'Conjured Item, -3, 45'
    end

    it 'sell in negative, quality negative' do
      gilded_rose = GildedRose.new(conjured_item(-1, -1))
      gilded_rose.update_quality
      expect(gilded_rose.items[0].to_s).to eq 'Conjured Item, -3, -1'
    end

    it 'sell in positive, quality positive' do
      gilded_rose = GildedRose.new(conjured_item(1, 49))
      gilded_rose.update_quality
      expect(gilded_rose.items[0].to_s).to eq 'Conjured Item, -1, 46'
    end

    it 'sell in positive, quality negative' do
      gilded_rose = GildedRose.new(conjured_item(1, -1))
      gilded_rose.update_quality
      expect(gilded_rose.items[0].to_s).to eq 'Conjured Item, -1, -1'
    end

  end
end
