class Invoice < ActiveRecord::Base
	belongs_to :matter
	has_many :prestations
	acts_as_follower
	acts_as_followable

	def all_expenses
	end

	def all_honoraires
		all_honoraires = 0
		matter.prestations.each do |prestation|
			all_honoraires += prestation.price.to_i
		end
		all_honoraires
	end

	def all_billed
		all_billed = 0
		following_prestations.each do |prestation|
			all_billed += prestation.price.to_i
		end
		all_billed
	end

	def all_non_billed
		if all_honoraires
			all_honoraires - all_billed
		end
	end

end
