class EndUser::CartsController < ApplicationController
  def index
  	@end_user = current_end_user
  	@product_in_carts = @end_user.product_in_carts
    # @product = Product.find(params[:id])
  end

  def create
  	# product_in_carts = current_end_user.product_in_cart.new(product_id: params[:id])
  	# product_in_carts.save
    @cart = ProductInCart.new(product_id: params[:product_id])
    @cart.end_user_id = current_end_user.id
    @cart.sheet = params[:product_in_carts][:sheet].to_i
    @cart.save
      redirect_to new_end_user_user_path
  end

  def destroy
    @cart = ProductInCart.find_by(product_id: params[:product_id], end_user_id: current_user.id)
    @cart.destroy
  end

  private
  def product_in_cart_params
  	params.require(:product_in_cart).permit(:sheet)
  end


end
