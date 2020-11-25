class Comment < ApplicationRecord
  validates :text, presence: true

  # Association
  belongs_to :user
  belongs_to :item
end
