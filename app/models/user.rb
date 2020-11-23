class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, length: { maximum: 10 }, uniqueness: true
  end
  
    VALID_EMAIL = /\A\S+@\S+\.\S+\z/.freeze
    validates :email, uniqueness: true, format: { with: VALID_EMAIL }
  
    VALID_PASSWORD = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
    validates  :password, confirmation: true, format: { with: VALID_PASSWORD }
    validates  :password_confirmation, presence: true

    def self.search(search)
      if search != ""
        User.where('nickname LIKE(?)', "%#{search}%")
      else
        User.all
      end
    end
  
  #Association
    has_many :items
    has_many :comments, dependent: :destroy
end
