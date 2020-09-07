require_relative './spec_helper'

describe GildedRose do

  describe '#update_quality' do
    context 'quality 0, sell_in 0' do

      it 'quality update with foo' do
        gilded_rose = GildedRose.new(item(0, 0))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'foo, -1, 0'
      end

      it 'quality update with aged brie' do
        gilded_rose = GildedRose.new(aged_brie_item(0,0))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, -1, 2'
      end

      it 'quality update with hand of sulfuras' do
        gilded_rose = GildedRose.new(sulfuras_item(0, 0))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 0, 0'
      end

      it 'quality update with backstage passes' do
        gilded_rose = GildedRose.new(backstage_item(0,0))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, -1, 0'
      end

    end

    context 'quality > 0' do

      it 'quality update with aged brie' do
        gilded_rose = GildedRose.new(aged_brie_item(0, 1))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, -1, 3'
      end
      it 'quality update with hand of sulfuras' do
        gilded_rose = GildedRose.new(sulfuras_item(0, 1))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 0, 1'
      end
      it 'quality update with foo to get 100% coverage' do
        gilded_rose = GildedRose.new(item(0, 1))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'foo, -1, 0'
      end
    end

    context 'sell in < 0' do
      it 'quality update with foo' do
        gilded_rose = GildedRose.new(item(-1, 0))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'foo, -2, 0'
      end
    end
  end

end
