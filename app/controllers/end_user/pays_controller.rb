class EndUser::PaysController < ApplicationController
	def show
  		@address = Address.find(params[:id])
	end

	def new
  		@method_of_payments = MethodOfPayment.new
      @address = Address.find(params[:address_id])
	end

	def create
    	@method_of_payments = MethodOfPayment.new(method_of_payments_params)
      	@method_of_payments.end_user_id = current_end_user.id
	 	if  @method_of_payments.save
  		redirect_to new_end_user_check_path
  	 	else
  		render :new
    	end
	end


    private
    def method_of_payments_params
      params.require(:method_of_payments).permit(:method_of_payment)
    end
  end
