class Disk < ApplicationRecord
	belongs_to :product
	has_many :record_musics, inverse_of: :disk,dependent: :destroy
	accepts_nested_attributes_for :record_musics, allow_destroy: true


end
