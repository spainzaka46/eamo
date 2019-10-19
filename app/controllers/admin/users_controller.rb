class Admin::UsersController < ApplicationController
  def index
  	@end_users = EndUser.all
  end

  def show
  	@end_user=EndUser.find(params[:id])

  end

  def edit
  		@end_user=EndUser.find(params[:id])
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

