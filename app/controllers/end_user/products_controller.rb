class EndUser::ProductsController < ApplicationController

  def index
    @genres = Genre.all
    @products = Product.where(sales_status:'販売中').page(params[:page]).per(20)
  end

  def genre_serch
  	@products = Product.where(genre_id:  params[:id])
    @genres = Genre.all
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

  def result
    @products = Product.where(sales_status:'販売中').search(params[:search]).page(params[:page]).per(20)
  end

end
