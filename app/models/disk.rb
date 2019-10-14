class Disk < ApplicationRecord
	has_many :record_musicks, dependent: :destroy
	belongs_to :product
end
