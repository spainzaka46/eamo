class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?
 def after_sign_in_path_for(resource)
  	mypage_path(resource)
  end
protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:kanzi_last_name,:kanzi_first_name,:kana_last_name,:kana_first_name,:email,:password])
   devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
 end
end
