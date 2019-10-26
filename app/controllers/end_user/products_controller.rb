class EndUser::ProductsController < ApplicationController
  def search
  end

  def genre_serch
  	@products = Product.where(genre_id: params[:id])
    @genres = Genre.page(params[:page]).per(2).reverse_order
    @cart = ProductInCart.new
  end

  def theme_serch
    @record_musics = RecordMusic.where(theme_id: params[:id])
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
    @products = Product.page(params[:page]).per(25)
  end
end
