class VisitorsController < ApplicationController
	def index
		@matters = Matter.order("updated_at DESC")
		@matter = Matter.new

		@clients = Client.order("updated_at DESC")

		@prestations = Prestation.all
    	@prestation = Prestation.new

    	@payments = Payment.all
    	@payment = Payment.new
	end
end
