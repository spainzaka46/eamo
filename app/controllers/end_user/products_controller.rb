class EndUser::ProductsController < ApplicationController

  def genre_serch
  	@products = Product.where(genre_id:  params[:id])
    @genres = Genre.all
    @cart = ProductInCart.new
  end

  def show
    @cart = ProductInCart.new
  	@product = Product.find(params[:id])
    ordersum = 0
    arrivalsum = 0
    @product.order_details.each do |order_detail|
      ordersum = order_detail.sheet + ordersum
    end
    @product.arrival_of_goods.each do |arrival_of_good|
      arrivalsum = arrival_of_good.sheet + arrivalsum
    end
    @stock = arrivalsum - ordersum

  end

  def index
    @genres = Genre.all
    @products = Product.page(params[:page]).per(25).search(params[:search])
    #@products = Product.page(params[:page]).per(25)
  end
end
