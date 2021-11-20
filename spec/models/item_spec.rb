require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '投稿情報の保存' do
    context '投稿情報が保存できるとき' do
      it '必須事項が全て存在すれば保存できる' do
        expect(@item).to be_valid
      end
      it 'outer_itemが空でも保存できる' do
        @item.outer_item = ''
        expect(@item).to be_valid
      end
      it 'tops_itemが空でも保存できる' do
        @item.tops_item = ''
        expect(@item).to be_valid
      end
      it 'bottoms_itemが空でも保存できる' do
        @item.bottoms_item = ''
        expect(@item).to be_valid
      end
      it 'shoes_itemが空でも保存できる' do
        @item.shoes_item = ''
        expect(@item).to be_valid
      end
      it 'goods_itemが空でも保存できる' do
        @item.goods_item = ''
        expect(@item).to be_valid
      end
      it 'imagesが2枚でも保存できる' do
        item = FactoryBot.build(:item, :images2)
        expect(item).to be_valid
      end
      it 'imagesが3枚でも保存できる' do
        item = FactoryBot.build(:item, :images3)
        expect(item).to be_valid
      end
      it 'imagesが4枚でも保存できる' do
        item = FactoryBot.build(:item, :images4)
        expect(item).to be_valid
      end
      it 'imagesが5枚でも保存できる' do
        item = FactoryBot.build(:item, :images5)
        expect(item).to be_valid
      end
      it 'imagesが6枚でも保存できる' do
        item = FactoryBot.build(:item, :images6)
        expect(item).to be_valid
      end
      it 'imagesのファイル形式がJPGでも保存できる' do
        item = FactoryBot.build(:item, :image_jpg)
        expect(item).to be_valid
      end
    end
    context '投稿情報が保存できないとき' do
      it 'titleが空では保存できない' do
        @item.title = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Title can't be blank")
      end
      it 'style_textが空では保存できない' do
        @item.style_text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Style text can't be blank")
      end
      it 'imagesが空では保存できない' do
        @item.images = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Images can't be blank")
      end
      it 'imagesが7枚以上では保存できない' do
        item = FactoryBot.build(:item, :images)
        item.valid?
        expect(item.errors.full_messages).to include("Style image は6枚以内にしてください")
      end
      it 'imagesが指定のファイル形式(JPG/PNG)以外では保存できない' do
        item = FactoryBot.build(:item, :image_gif)
        item.valid?
        expect(item.errors.full_messages).to include("Style image はJPGまたはPNG形式でアップロードしてください")
      end
      it 'userが紐づいていないと保存ができない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
    end
  end
end
