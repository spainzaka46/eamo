class Product < ApplicationRecord
	has_many :product_in_carts, dependent: :destroy
	has_many :order_details, dependent: :destroy
	has_many :arrival_of_goods, dependent: :destroy
	has_many :disks, inverse_of: :product, dependent: :destroy
	accepts_nested_attributes_for :disks, reject_if: :all_blank, allow_destroy: true

	# has_many :record_musics , through: :disks
	belongs_to :artist, optional: true
	belongs_to :label, optional: true
	belongs_to :genre, optional: true

	validates :title, presence: true
	validates :price, presence: true
	validates :sales_status, presence: true


	attachment :photo

    acts_as_paranoid

	enum sales_status: {販売中: 0, 販売停止中: 1}

	def tax
		val = 0.1
		return val
	end

	def include_tax
		total = price * tax + price
		return total.round
	end

end
