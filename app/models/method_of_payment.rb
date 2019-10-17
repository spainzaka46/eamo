class MethodOfPayment < ApplicationRecord
  enum payment:{クレジットカード決済: 0, 銀行振込: 1, 代金引換: 2}  #ここ!
end
