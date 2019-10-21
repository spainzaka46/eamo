class Theme < ApplicationRecord
	has_many :record_musics, dependent: :destroy
end
