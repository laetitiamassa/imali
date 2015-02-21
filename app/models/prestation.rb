class Prestation < ActiveRecord::Base
	belongs_to :matter

	def price
		rate*amount
	end
end
