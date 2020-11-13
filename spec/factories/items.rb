FactoryBot.define do
  factory :item do
    buy_day     { '2020/11/11' }
    category_id { '5' }
    food_id     { '10' }
    size_id     { '15' }
    sell_by     { '2020/11/14' }
    memo        { '昨晩の残り' }
    
    association :user
  end
end
