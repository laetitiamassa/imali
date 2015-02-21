class Matter < ActiveRecord::Base
	belongs_to :client
	
	has_many :prestations, dependent: :destroy
	has_many :invoices, dependent: :destroy
	has_many :payments, dependent: :destroy
end
