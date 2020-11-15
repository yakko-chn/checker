require "date"

class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category
    belongs_to_active_hash :food
    belongs_to_active_hash :size


    with_options numericality: { other_than: 1 }, presence: true do
      validates  :category_id
      validates  :food_id
      validates  :size_id
    end

    with_options presence: true do
      validates  :buy_day
      validates  :sell_by
    end

    validate :present_after

    def present_after
     if  sell_by < Date.today
      errors.add(:sell_by, '（賞味期限）は本日以降の日付で登録してください') 
     end
    end

  #Association
   belongs_to :user
   has_many :comments, dependent: :destroy
end
