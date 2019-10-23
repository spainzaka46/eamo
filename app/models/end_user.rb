class EndUser < ApplicationRecord
	  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :product_in_carts, dependent: :destroy
	has_many :orders, dependent: :destroy
	has_many :addresses, dependent: :destroy
	validates :kanzi_last_name, presence: true
	validates :kanzi_first_name, presence: true
	validates :kana_last_name, presence: true
	validates :kana_first_name, presence: true
	validates :email, presence: true
end
