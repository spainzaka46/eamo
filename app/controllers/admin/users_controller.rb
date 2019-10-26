class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  PER=10
  def index
  	@end_users = EndUser.page(params[:page]).per(PER)

  end

  def show
  	@end_user=EndUser.find(params[:id])

  end

  def edit
  		@end_user=EndUser.find(params[:id])
  end
  def destroy
    @end_user = EndUser.find(params[:id])
    @end_user.destroy
    redirect_to dmin_users_path
    
  end

  def updatedef update
    @end_user = EndUser.find(params[:id])
    if @end_user.update(end_user_params)
    redirect_to admin_user_path(@end_user.id)
    else
     redirect_to admin_user_path(@end_user.id)
    end

  end

 private
    def end_user_params
      params.require(:end_user).permit(:kanzi_last_name, :kanzi_first_name,:kana_last_name,:kana_first_name,:email)
    end



end

