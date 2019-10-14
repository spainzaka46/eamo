class Product < ApplicationRecord
	has_many :product_in_carts, dependent: :destroy
	has_many :order_details, dependent: :destroy
	has_many :arrival_of_goods, dependent: :destroy
	has_many :disks, dependent: :destroy
	belongs_to :artist, :label, :genre
end
