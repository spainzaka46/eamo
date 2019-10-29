class Admin::OrdersController < ApplicationController
	before_action :authenticate_admin!

  def index
    @orders = Order.page(params[:page]).order(created_at: :desc).per(10)
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_orders_path
  end

  private
  def order_params
    params.require(:order).permit(:order_status)
  end
end
