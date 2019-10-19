class EndUser::CartsController < ApplicationController
  def index
  	@end_user = current_end_user
  	@product_in_carts = @end_user.product_in_carts
  end

  def create
  	product_in_carts = current_end_user.ProductInCart.new(product_id: params[:id])
  	product_in_carts.save
  end

  def destroy
  end

  private
  def product_in_cart_params
  	params.require(:product_in_cart).permit(:sheet)
  end


end
