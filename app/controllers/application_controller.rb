class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	case resource
	  	when Admin
	  		admin_styles_path
	  	when User
	  		root_path
  	end
  end

  def after_sign_out_path_for(resource)
  	if request.fullpath == "/admin/sign_out"
    #if request.referer&.include?("/admin/sign_out")
    	new_admin_session_path
    else
    	new_user_session_path
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :encrypted_password])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :encrypted_password])
  end
end
