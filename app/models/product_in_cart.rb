class ProductInCart < ApplicationRecord
	belongs_to :end_user, :product
end
