class Admin::ArrivalsController < ApplicationController
  def new
  	@arrival = Arrivals_of_good.new
  end

  def create
  	arrival = Arrivals_of_good.new(arrivals_of_good_params)
  	arrival.save
  end

  def index
  end
end
