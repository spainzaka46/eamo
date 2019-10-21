class Artist < ApplicationRecord
	has_many :products
	default_scope -> { order(artist_name: :desc) }
end
