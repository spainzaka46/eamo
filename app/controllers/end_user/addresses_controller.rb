class EndUser::AddressesController < ApplicationController
  def new
  	@address=Address.new
  end

  def create
  	@address = Address.new(address_params)
    @address.end_user_id=current_end_user.id
  	if @address.save
  		redirect_to mypage_path(@current_end_user)
  	else
      p @address.errors
  		render :new
     end
   end

  def edit
  	@address = Address.find(params[:id])
  end

  def update
    @address=Address.find(params[:id])
    @address.end_user_id=current_end_user.id
    if
  	 @address.update(address_params)
     redirect_to mypage_path(current_end_user.id)
    else
     redirect_to mypage_path(current_end_user.id)
    end
  end

 private
    def address_params
      params.require(:address).permit(:send_name,:postal_code, :address, :phone_number)
    end

end
