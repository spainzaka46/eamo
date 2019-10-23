class Artist < ApplicationRecord
	has_many :products
	default_scope -> { order(artist_name: :desc) }
	validates :artist_name, presence: true
end
