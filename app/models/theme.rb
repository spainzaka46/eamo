class Theme < ApplicationRecord
	has_many :record_musics, dependent: :destroy
	has_many :products, dependent: :destroy
end
