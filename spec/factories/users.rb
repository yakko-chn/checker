FactoryBot.define do
  factory :user do
    nickname              { 'ドナルド・トランプ' }
    email                 { 'aiueo@yahoo.com' }
    password              { 'abcd123' }
    password_confirmation { password }
  end
end
