class EndUser::CheecksController < ApplicationController
 before_action :check_nil_cart, only: [:new]
 def show
 end
 def new
   @order = Order.new
   @address=Address.new
 end
 def confirm
   @order = Order.new(confirm_order_params)
   @order.end_user_id = current_end_user.id
   @order.delivery_charge = 500
   if params[:okurisaki].to_i < 0
     address = Address.new(end_user_id: current_end_user.id, address: @order.address, send_name: @order.send_name, postal_code: @order.postal_code,phone_number: @order.phone_number)
      unless @address.save
        render "new"
      end
   else
     address = Address.find(params[:okurisaki])
     @order.address = address.address
     @order.send_name = address.send_name
     @order.postal_code = address.postal_code
     @order.phone_number = address.phone_number
   end
   @total = 0
   current_end_user.product_in_carts.each do |product_in_cart|
   @total += product_in_cart.sheet * product_in_cart.product.include_tax
   end
 end
   #binding.pry
   # binding.pry
 def create
   @order = Order.new(order_params)
   @order.end_user_id = current_end_user.id
   @order.order_status = "受付"
   if @order.save
     current_end_user.product_in_carts.each do |cart|
       OrderDetail.create(
         order_id: @order.id,
         product_id: cart.product.id,
         sheet: cart.sheet,
         price: cart.product.price
         )
       cart.destroy
     end
     redirect_to end_user_cheecks_path
   else
     render :confirm
   end
 end
  private
  def confirm_order_params
     params.require(:order).permit(:send_name, :postal_code, :address, :phone_number, :method_of_payment)
   end
   def order_params
     params.require(:order).permit(:send_name, :postal_code, :address, :phone_number, :method_of_payment,:delivery_charge,:order_status)
   end
   def check_nil_cart
     if current_end_user.product_in_carts.blank?
       redirect_to end_user_products_path
     end
   end
   # def order_details_params
   #   params.require(:order_detail).permit(:order_id,:product_id,:sheet,:price)
   # end
end