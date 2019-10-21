class MethodOfPayment < ApplicationRecord
	enum method_of_payment:{クレジットカード: 0, 銀行振込: 1,代金引換: 2}
end
