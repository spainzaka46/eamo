class Admin::UserAddressController < ApplicationController


def edit
  	@address = Address.find(params[:id])
  end

def update
    @address = Address.find(params[:id])

    if
  	 @address.update(address_params)
     redirect_to admin_user_path(@address.end_user.id)
   	else
     render :edit
  	end
end
 private
    def address_params
      params.require(:address).permit(:send_name,:postal_code, :address, :phone_number)
    end

end
