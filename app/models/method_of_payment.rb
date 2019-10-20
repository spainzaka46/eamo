class MethodOfPayment < ApplicationRecord
  enum method_of_payment:{クレジットカード決済: 0, 銀行振込: 1, 代金引換: 2}  #ここ!
end
