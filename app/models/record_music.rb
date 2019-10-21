class RecordMusic < ApplicationRecord
	belongs_to :disk
	belongs_to :theme
end