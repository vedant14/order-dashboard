class Orders::OrderFollowsController < ApplicationController
before_action :authenticate_user!
before_action :set_order

	def create
		@order.order_follows.where(user_id: current_user.id).first_or_create

		respond_to do |format|
			format.html {redirect_to @order}
			format.js
		end
	end


	def destroy
		@order.order_follows.where(user_id: current_user.id).destroy_all
		respond_to do |format|
			format.html {redirect_to @order}
			format.js
		end
	end


	private 

		def set_order
			@order = Order.find(params[:order_id])
		end
end