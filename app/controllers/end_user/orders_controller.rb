class EndUser::OrdersController < ApplicationController
  def index
    enduser = EndUser.find(current_end_user.id)
    @orders = enduser.orders.page(params[:page]).reverse_order
  end

  def show
    @order = Order.find(current_end_user.id)
    @order_details = @order.order_details
  end
end
