class Admin::ProductsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @product = Product.new
    @artist = Artist.new
    @genre = Genre.new
    @label = Label.new

  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "商品を追加しました"
      redirect_to end_user_product_path(@product)
    else
      render :new
  end

  private

  def product_params
    params.require(:product).permit(:)
  end

  def

  end
end
