class Prestation < ActiveRecord::Base
	belongs_to :matter
	belongs_to :invoice

	def price
		rate*amount
	end
end
