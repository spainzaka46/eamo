class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?
 before_action :set_genres

protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:kanzi_last_name,:kanzi_first_name,:kana_last_name,:kana_first_name,:email,:password])
   devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
 end
 def set_genres
 	@genres = Genre.all
 end
end
