class Invoice < ActiveRecord::Base
	belongs_to :matter
	has_many :prestations

	def all_expenses
	end

	def all_honoraires
	end

	def all_billed
	end
end
