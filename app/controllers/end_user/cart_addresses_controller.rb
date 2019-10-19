class EndUser::CartAddressesController < ApplicationController
  def show
  	  
  	     @address=Address.new
  end

  def new

  end

def create
    @address = Address.new(address_params)
    @address.end_user_id= current_end_user.id
    if @address.save
      redirect_to end_user_pay_path(@address)
    else
      p @address.errors
      render :new
     end

  end

end
