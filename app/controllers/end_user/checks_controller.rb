class EndUser::ChecksController < ApplicationController
  def show
  end

  def new
  	@order = Order.find(params[:id])
    @address = Address.find(params[:id])
    @product_in_carts = Product_in_cart.find(params[:id])
    @delivery_charges = Delivery_charge.find(params[:id])
    @total = @total_price + @delivery_charges.delivery_charge
  end

  def create
    @address = Address.find(params[:address_id])
    @order = Order.new(method_of_payments_params)

  	#address.send_name = order.send_name
  	#address.postal_code = order.address.postal_code
  	#address.id = order.send_name
  	##Zaddress.phone_number = order.phone_number
  	#product_in_carts.sheet_id = order.sheet_id
  	#delivery_charges.delivery_charges = order.delivery_charges
  	#if
  	#	@order.save
    #  redirect_to end_user_cheeck_path(@current_end_user)
  	#else
  	#	render :new
    #end
  end

  private
  def method_of_payments_params
      params.require(:method_of_payments).permit(:method_of_payment)
  end


end

