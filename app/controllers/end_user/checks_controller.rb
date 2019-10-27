class EndUser::ChecksController < ApplicationController
  def show
  end

  def new
    @address = Address.find(parasms[:address_id])
    @method_of_payment = Method_of_payment.find(params[:method_of_payment])
  end

  def create
    @order = Order.new(order_params)
    @order.save
  	delivery_charges.delivery_charges = order.delivery_charges
  end

  private
  def method_of_payments_params
      params.require(:method_of_payment).permit(:method_of_payment)
  end


end


