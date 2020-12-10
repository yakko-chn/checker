require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '食材登録' do
    # 正常系
    context '食材登録がうまくいくとき' do
      it '全て入力されていれば、登録できる' do
        expect(@item).to be_valid
      end
      it 'メモが空白でも登録できる' do
        @item.memo = nil
        expect(@item).to be_valid
      end
    end

    # 異常系
    context '食材登録がうまくいかないとき' do
      #--------------------  buy_day  ------------------------
      it '購入日が空白の場合、登録できない' do
        @item.buy_day = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Buy dayを入力してください')
      end

      #--------------------  category_id  ------------------------
      it 'category_idが空白の場合、登録できない' do
        @item.category_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Categoryを入力してください')
      end
      it 'category_idが1の場合、登録できない' do
        @item.category_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Categoryは1以外の値にしてください')
      end

      #--------------------  food_id  ------------------------
      it 'food_idが空白の場合、登録できない' do
        @item.food_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Foodを入力してください')
      end
      it 'food_idが1の場合、登録できない' do
        @item.food_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Foodは1以外の値にしてください')
      end

      #--------------------  size_id  ------------------------
      it 'size_idが空白の場合、登録できない' do
        @item.size_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Sizeを入力してください')
      end
      it 'size_idが1の場合、登録できない' do
        @item.size_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Sizeは1以外の値にしてください')
      end

      it '賞味期限（賞味期限）が購入日よりも前の場合、登録できない' do
        @item.sell_by = '2020/11/01'
        @item.valid?
        expect(@item.errors.full_messages).to include('Sell by（賞味期限）は本日以降の日付で登録してください')
      end
    end
  end
end
