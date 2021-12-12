require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before do
    @favorite = FactoryBot.build :favorite
  end
  describe 'いいね情報の保存' do
    context 'いいねができるとき' do
      it '必要情報が揃っていればいいねができる' do
        expect(@favorite).to be_valid
      end
    end
    context 'いいねができないとき' do
      it 'userが紐づいていないといいねができない' do
        @favorite.user = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include('User must exist')
      end
      it 'itemが紐づいていないといいねができない' do
        @favorite.item = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include('Item must exist')
      end
    end
  end
end
