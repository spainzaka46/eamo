class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin!
  # protect_from_forgery except: :update

  def index
    @products = Product.page(params[:page]).reverse_order
  end

  def show
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

  def new
    @product = Product.new
    @disk = @product.disks.build
    @song = @disk.record_musics.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "商品を追加しました"
      redirect_to admin_product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
              binding.pry
      flash[:notice] = "商品情報を更新しました"
      redirect_to admin_product_path(@product)
    else
      render :edit
    end
  end

  def result
    @products = Product.search(params[:search]).page(params[:page]).reverse_order
  end

  private

  def product_params
    params.require(:product).permit(:photo, :title, :artist_id, :genre_id, :label_id, :price, :sales_status,
      disks_attributes:[:id, :disk_number, :_destroy,
        record_musics_attributes:[:id, :track_number, :song_name, :theme_id, :_destroy]
      ])

  end

end