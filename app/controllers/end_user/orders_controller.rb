class EndUser::OrdersController < ApplicationController
  def index
    enduser = EndUser.find(params[:user_id])
    @orders = enduser.orders.page(params[:page]).reverse_order
    
  end

  def show
    @orders = Order.find(params[:id])
    @order_details = @orders.order_details
  end
end
