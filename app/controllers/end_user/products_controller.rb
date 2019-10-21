class EndUser::ProductsController < ApplicationController
  def search
  end

  def genre_serch
  	@products = Products.where(genre_id:  params[:id])
  end

  def show

  end

  def index
  end
end
