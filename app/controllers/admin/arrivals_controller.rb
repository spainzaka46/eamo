class Admin::ArrivalsController < ApplicationController
  def new
  	@arrival = ArrivalOfGood.new
    @product = Product.all
    @select = []
    @product.each do | pd |
      ar =[pd.title+":"+pd.artist.artist_name,pd.id]
      @select.push(ar)
    end
  end

  def create
  	arrival = ArrivalOfGood.new(arrival_of_good_params)
  	arrival.save
  	redirect_to admin_arrivals_path
  end

  def index
    @arrivals = ArrivalOfGood.all
  end

  def arrival_of_good_params
  	params.require(:arrival_of_good).permit(:arrival_day, :sheet)
  end
end
