class EndUser::AddressesController < ApplicationController
  def new
  	@address=Address.new
  end
  def create
  end

end
