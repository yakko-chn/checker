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

  #Association
   belongs_to :user
end
