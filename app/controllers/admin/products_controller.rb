class Admin::ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
    @artist = @product.artist
    @genre = @product.genre
    @label = @product.label
    order = OrderDetail.where(product_id:@product.id).group(:product_id).sum(:sheet)
    logger.debug(order)
    ordersum = order[@product.id]
    logger.debug(ordersum)
    arrival = ArrivalOfGood.where(product_id:@product.id).group(:product_id).sum(:sheet)
    logger.debug(arrival)
    arrivalsum = arrival[@product.id]
    logger.debug(arrivalsum)
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
    # @disk = @product.disks.build
    # @record_music = @disk.record_musics.build
  end

  def update
    # binding.pry
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "商品情報を更新しました"
      redirect_to admin_product_path(@product)
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product)
    .permit(:genre_id,:label_id,:artist_id,:title,:sales_status,:price,:photo,
    	disks_attributes:[
    		:id,:product_id, :disk_number, :_destroy,
    		record_musics_attributes:[
    			:id,:disk_id, :track_number, :song_name, :theme_id, :_destroy
    		]
    	])
  end

end