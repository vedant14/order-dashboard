class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
  	@orders = Order.filter(params.slice(:status))
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      respond_to do |format| 
        format.js
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
      end                    
    else
      render :new
    end
  end

  def edit
  end

  def update
      respond_to do |format|
        format.html { redirect_to root_path}
        format.js
      end
  end

  def destroy
    @order.destroy
      respond_to do |format| 
        format.js
        format.html { redirect_to root_path, notice: 'Order was successfully deleted.' }
      end                    
  end

private
  def set_order
   @order = Order.find(params[:id])
  end 

  def order_params
    params.require(:order).permit(:name, :published_at, :status)
  end

end
