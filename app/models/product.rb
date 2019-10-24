class Product < ApplicationRecord
	has_many :product_in_carts, dependent: :destroy
	has_many :order_details, dependent: :destroy
	has_many :arrival_of_goods, dependent: :destroy
	has_many :disks, inverse_of: :product, dependent: :destroy
	accepts_nested_attributes_for :disks, reject_if: :all_blank, allow_destroy: true

	# has_many :record_musics , through: :disks
	belongs_to :artist, optional: true
	belongs_to :label, optional: true
	belongs_to :genre, optional: true

	validates :title, presence: true
	validates :price, presence: true
	validates :sales_status, presence: true

	attachment :photo
	acts_as_paranoid
	enum sales_status: {販売中: 0, 販売停止中: 1}

	def self.search(search)
		if search
#			product = Product.joins(:artist).joins(:genre).where(['title LIKE ?', "%#{search}%"])
#			.or(Artist.where(['artist_name LIKE ?', "%#{search}%"]))
#			.or(where(['genre_name LIKE ?', "%#{search}%"]))

      product = Product.where(['title LIKE ?', "%#{search}%"])
      artist = Product.joins(:artist).where(['artist_name LIKE ?', "%#{search}%"])
      song = Product.joins(disks: :record_musics).where(['song_name LIKE ?', "%#{search}%"])
      genre = Product.joins(:genre).where(['genre_name LIKE ?', "%#{search}%"])
      label = Product.joins(:label).where(['label_name',"%#{search}%"])
      product = product | artist | song | genre | label
    else
      Product.all
    end
	end
end
