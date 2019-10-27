class EndUser::UsersController < ApplicationController
  def show
  end

  def edit
      @end_user = EndUser.find(params[:id])
  end

  def finish
  end

  def new
    @address=Address.new
  end
  def create
    @address = Address.new(address_params)
    @address.end_user_id=current_end_user.id
    if @address.save
      redirect_to end_user_pay_path(@address)
    else

      render :new
    end
  end
  def check
  end
  def destroy
    @end_user = EndUser.find(params[:id])
    @end_user.destroy
    redirect_to end_user_finish_path
  end
  def update
    @end_user = EndUser.find(params[:id])
    if @end_user.update(end_user_params)
    redirect_to admin_user_path(@end_user.id)
    else
    render "edit"
    end
  end

  private
    def end_user_params
      params.require(:end_user).permit(:kanzi_last_name, :kanzi_first_name,:kana_last_name,:kana_first_name,:email)
    end
    def order_params
      params.require(:order).permit(:sand_name, :postal_code,:address,:phone_number)
    end
    def address_params
      params.require(:address).permit(:send_name,:postal_code, :address, :phone_number)
    end
end



