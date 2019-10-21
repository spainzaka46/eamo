class Admin::OrderhistoriesController < ApplicationController
	before_action :authenticate_admin!
  def index
    end_user = EndUser.find(params[:user_id])
    @orders = end_user.orders.page(params[:page]).reverse_order
  end
end
