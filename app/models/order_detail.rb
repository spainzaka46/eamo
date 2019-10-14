class OrderDetail < ApplicationRecord
	belongs_to :product, :order
end
