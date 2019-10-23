class Label < ApplicationRecord
	has_many :products
	default_scope -> { order(label_name: :desc) }
	validates :label_name, presence: true
end
