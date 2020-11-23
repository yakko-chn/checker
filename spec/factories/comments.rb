FactoryBot.define do
  factory :comment do
    text     { '美味しかったです' }
  
    association :user
    association :item
  end
end
