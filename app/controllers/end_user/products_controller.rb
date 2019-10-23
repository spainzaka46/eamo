class EndUser::ProductsController < ApplicationController
  def search
  end

  def genre_serch
  	@products = Product.where(genre_id:  params[:id])
    @genres = Genre.all
    @cart = ProductInCart.new
  end

  def show
    @cart = ProductInCart.new
  	@product = Product.find(params[:id])
    order = OrderDetail.where(product_id:@product.id).group(:product_id).sum(:sheet)	
    ordersum = order[@product.id]
    arrival = ArrivalOfGood.where(product_id:@product.id).group(:product_id).sum(:sheet)	
    arrivalsum = arrival[@product.id]
    @stock = arrivalsum - ordersum

  end

  def index
    @genres = Genre.all
    @products = Product.page(params[:page]).per(25)
  end
end
