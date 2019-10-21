class EndUser::OrdersController < ApplicationController
  before_action :redirect_show,only: [:show]
  before_action :redirect_index, only: [:index]
  def index
    enduser = EndUser.find(params[:user_id])
    @orders = enduser.orders.page(params[:page]).reverse_order

  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end

  private
  def redirect_show
    end_user = EndUser.find(params[:user_id])
    order = Order.find(params[:id])
    if order.end_user != end_user
      redirect_to end_user_user_orders_path(end_user)
    end
  end

  def redirect_index
    end_user = EndUser.find(params[:user_id])
    if end_user != current_end_user
      redirect_to end_user_user_orders_path(current_end_user)
    end
  end
end
