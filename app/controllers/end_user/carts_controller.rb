class EndUser::CartsController <  ApplicationController
  before_action :authenticate_end_user!, only: [:create]
  def index
    # binding.pry
  	@end_user = current_end_user
  	@product_in_carts = @end_user.product_in_carts
    # @product = Product.find(params[:id])
  end

  def create
  	# product_in_carts = current_end_user.product_in_cart.new(product_id: params[:id])
  	# product_in_carts.save
    if  ProductInCart.find_by(product_id: params[:product_id])
      @pic = ProductInCart.find_by(product_id: params[:product_id])
      sheet = params[:product_in_cart][:sheet].to_i +  ProductInCart.find_by(product_id: params[:product_id]).sheet
      @pic.update(sheet: sheet)
    else
      @cart = ProductInCart.new(product_id: params[:product_id])
      @cart.end_user_id = current_end_user.id
      @cart.sheet = params[:product_in_cart][:sheet].to_i
      @cart.save
    end
      redirect_to end_user_carts_path
  end

  def destroy
    @product = Product.find(params[:id])
    @cart = ProductInCart.find_by(product_id: params[:product_id],end_user_id: current_end_user.id)
    @cart.destroy
    redirect_to end_user_carts_path
  end

  private
  def product_in_cart_params
  	params.require(:product_in_cart).permit(:sheet)
  end


end