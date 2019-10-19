class OrderDetail < ApplicationRecord
	belongs_to :product
	belongs_to :order
  enum status:{受付: 0, 出荷済: 1, 配送: 2, キャンセル: 3}
end
