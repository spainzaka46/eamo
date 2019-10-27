class EndUser::OrdersController < ApplicationController
  def index
    @orders = current_end_user.orders.page(params[:page]).reverse_order
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end
end
