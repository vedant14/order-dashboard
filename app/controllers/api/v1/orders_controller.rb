class Api::V1::OrdersController < ApiController
	before_action :set_order

	def show 
	end


	private

		def set_order
			@order = Order.find(params[:id])
		end

end	