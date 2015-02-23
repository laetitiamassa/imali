class Prestation < ActiveRecord::Base
	belongs_to :matter
	belongs_to :invoice
	acts_as_followable
	acts_as_follower

	def price
		if rate
			rate*amount
		end
	end
end
