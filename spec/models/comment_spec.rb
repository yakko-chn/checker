require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
    # 正常系
    context 'コメント投稿がうまくいくとき' do
      it '全て入力されていれば、登録できる' do
        expect(@comment).to be_valid
      end
    end

    # 異常系
    context 'コメント投稿がうまくいかないとき' do
      it 'メモが空白でも登録できる' do
        @comment.text = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Textを入力してください')
      end
    end
  end
end
