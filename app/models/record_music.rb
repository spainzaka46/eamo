class RecordMusic < ApplicationRecord
	belongs_to :disk, optional:true
	# belongs_to :theme
end
