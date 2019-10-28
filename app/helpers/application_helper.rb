module ApplicationHelper
    def include_tax(price)
		total = price * 1.1
		return total.round
	end
end
