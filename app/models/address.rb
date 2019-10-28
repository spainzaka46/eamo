class Address < ApplicationRecord
	belongs_to :end_user
	validates :postal_code, presence: true
	validates :address, presence: true
	validates :phone_number, presence: true
	validates :send_name, presence: true
  acts_as_paranoid
end
