class Admin::ArrivalsController < ApplicationController
	  before_action :authenticate_admin!
  def new
  	@arrival = ArrivalOfGood.new
    @product = Product.all
    @select = []
    @product.each do | pd | #selectの配列の中にproductの配列がある
      ar =[pd.title+":"+pd.artist.artist_name,pd.id] #セレクトボックス
      @select.push(ar)
    end
  end

  def create
  	arrival = ArrivalOfGood.new(arrival_of_good_params)
  	arrival.save
#    rescue ActiveRecord::RecordInvalid => e
#      pp e.record.errors
  	redirect_to admin_arrivals_path
  end

  def index
    # @arrivals = ArrivalOfGood.all.order(arrival_day: "desc") #新しい入荷順番です。
     @arrivals = ArrivalOfGood.page(params[:page]).per(10).reverse_order
  end

  private
  def arrival_of_good_params
  	params.require(:arrival_of_good).permit(:product_id,:arrival_day, :sheet)
  end
end
