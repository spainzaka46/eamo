class Order < ApplicationRecord
	has_many :order_details, dependent: :destroy
	belongs_to :end_user
  enum order_status:{受付: 0, 出荷済: 1, 配送: 2, キャンセル: 3}
  enum method_of_payment:{クレジットカード決済: 0, 銀行振込: 1, 代金引換: 2}
  acts_as_paranoid

end
