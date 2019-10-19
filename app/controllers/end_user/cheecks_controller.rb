class EndUser::CheecksController < ApplicationController
  def show
  end

  def new
  	@order = Oder.find(params[:id])
    @address = Address.find(params[:id])
    @product_in_carts= Product_in_carts.find(params[:id])
    @delivery_charges= Delivery_charges.find(params[:id])
    @total=@ product_in_carts.sheet+@ delivery_charges.delivery_charges
  end
end
 end
  def create
  	address.send_name_id=order_sand_name_id
  	address.address.postal_code_id=order_address.postal_code_id
  	address._id=order_sand_name_id
  	address.phone_number_id=order_phone_number_id
  	product_in_carts.sheet_id=order_sheet_id
  	delivery_charges.delivery_charges_id=order_delivery_charges_id


  	if 
  		@order.save

    redirect_to end_user_cheeck_path(@current_end_user)
  	else

  		render :new
     end



     comment.post_image_id = post_image.id