class OrdersController < ApplicationController
  def new
  end

  def index
  	@orders = Order.filter(params.slice(:status))
  end

  def create
  end

  def show
	@order = Order.find(params[:id])
  end
  def update
  end
end
