class RecordMusic < ApplicationRecord
	belongs_to :disk
	belongs_to :theme
	validates :track_number, presence: true, numericality: true
	validates :song_name, presence: true

  acts_as_paranoid

end