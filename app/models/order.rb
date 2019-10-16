class Order < ApplicationRecord
	has_many :order_details, dependent: :destroy
	belongs_to :end_user
  enum status:{受付: 0, 出荷済: 1, 配送: 2, キャンセル: 3}
end
