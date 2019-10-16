class EndUser::UsersController < ApplicationController
  def index
    @end_user =current_user
    @address=Address.find(params[:id])
  end

  def show
  end

  def edit
  end

  def finish
  end

  def new
  end
end
