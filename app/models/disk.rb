class Disk < ApplicationRecord
	belongs_to :product
	has_many :record_musics, dependent: :destroy
end
