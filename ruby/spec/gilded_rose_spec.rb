require_relative './spec_helper'

describe GildedRose do

  describe '#update_quality' do

    context 'quality 0' do

      context 'sell in 11' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(11, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, 10, 0'
        end
        it 'quality update with aged brie' do
          gilded_rose = GildedRose.new(aged_brie_item(11, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, 10, 1'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(11, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 11, 0'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(backstage_item(11, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 10, 1'
        end
      end

      context 'sell in 6' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(6, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, 5, 0'
        end
        it 'quality update with aged brie' do
          gilded_rose = GildedRose.new(aged_brie_item(6, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, 5, 1'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(6, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 6, 0'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(backstage_item(6, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 5, 2'
        end
      end

      context 'sell in 0' do
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

      context 'sell in < 0' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(-1, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, -2, 0'
        end

        it 'quality update with Aged Brie' do
          gilded_rose = GildedRose.new(aged_brie_item(-1, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, -2, 2'
        end

        it 'quality update with Hand of Sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(-1, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, -1, 0'
        end

        it 'quality update with backstage pass' do
          gilded_rose = GildedRose.new(backstage_item(-1, 0))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, -2, 0'
        end
      end

    end

    context 'quality > 0 and quality < 49' do

      context 'sell in 11' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(11, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, 10, 0'
        end
        it 'quality update with aged brie' do
          gilded_rose = GildedRose.new(aged_brie_item(11, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, 10, 2'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(11, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 11, 1'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(backstage_item(11, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 10, 2'
        end
      end

      context 'sell in 6' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(6, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, 5, 0'
        end
        it 'quality update with aged brie' do
          gilded_rose = GildedRose.new(aged_brie_item(6, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, 5, 2'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(6, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 6, 1'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(backstage_item(6, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 5, 3'
        end
      end


      context 'sell in 0' do
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
        it 'quality update with backstage passes' do
          gilded_rose = GildedRose.new(backstage_item(0, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, -1, 0'
        end
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(0, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, -1, 0'
        end
      end

      context 'sell in < 0' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(-1, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, -2, 0'
        end

        it 'quality update with Aged Brie' do
          gilded_rose = GildedRose.new(aged_brie_item(-1, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, -2, 3'
        end

        it 'quality update with Hand of Sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(-1, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, -1, 1'
        end

        it 'quality update with backstage pass' do
          gilded_rose = GildedRose.new(backstage_item(-1, 1))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, -2, 0'
        end
      end

    end

=begin
      it 'quality update with foo' do
        gilded_rose = GildedRose.new(item(-1, 0))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'foo, -2, 0'
      end

      it 'quality update with Aged Brie' do
        gilded_rose = GildedRose.new(aged_brie_item(-1, 0))
        gilded_rose.update_quality
        expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, -2, 2'
      end
=end

    context 'quality >= 50' do

      context 'sell in 11' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(11, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, 10, 49'
        end
        it 'quality update with aged brie' do
          gilded_rose = GildedRose.new(aged_brie_item(11, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, 10, 50'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(11, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 11, 50'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(backstage_item(11, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 10, 50'
        end
      end

      context 'sell in 6' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(6, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, 5, 49'
        end
        it 'quality update with aged brie' do
          gilded_rose = GildedRose.new(aged_brie_item(6, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, 5, 50'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(6, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 6, 50'
        end
        it 'quality update with hand of sulfuras' do
          gilded_rose = GildedRose.new(backstage_item(6, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 5, 50'
        end
      end

      context 'sell_in 1' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, 0, 49'
        end
        it 'quality update with Aged Brie' do
          gilded_rose = GildedRose.new(aged_brie_item(1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, 0, 50'
        end
        it 'quality update with Hand of Sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, 1, 50'
        end
        it 'quality update with backstage passes' do
          gilded_rose = GildedRose.new(backstage_item(1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, 0, 50'
        end
      end

      context 'sell_in < 0' do
        it 'quality update with foo' do
          gilded_rose = GildedRose.new(item(-1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'foo, -2, 48'
        end
        it 'quality update with Aged Brie' do
          gilded_rose = GildedRose.new(aged_brie_item(-1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Aged Brie, -2, 50'
        end
        it 'quality update with Hand of Sulfuras' do
          gilded_rose = GildedRose.new(sulfuras_item(-1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Sulfuras, Hand of Ragnaros, -1, 50'
        end
        it 'quality update with backstage passes' do
          gilded_rose = GildedRose.new(backstage_item(-1, 50))
          gilded_rose.update_quality
          expect(gilded_rose.items[0].to_s).to eq 'Backstage passes to a TAFKAL80ETC concert, -2, 0'
        end
      end

    end

  end

end
