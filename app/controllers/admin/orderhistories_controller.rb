class Admin::OrderhistoriesController < ApplicationController
	before_action :authenticate_admin!
  def index
    end_user = EndUser.with_deleted.find(params[:user_id])
    @orders = end_user.orders.with_deleted.page(params[:page]).reverse_order
  end
end
