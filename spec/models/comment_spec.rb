require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
    context 'コメントが投稿できるとき' do
      it '必要事項が全て存在すれば投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context 'コメントが保存できないとき' do
      it 'commentsが空では保存できない' do
        @comment.comments = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comments can't be blank")
      end
      it 'userが紐づいていないと保存できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
      end
      it 'itemが紐づいていないと保存できない' do
        @comment.item = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Item must exist')
      end
    end
  
  
  end
end


