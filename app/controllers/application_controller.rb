class ApplicationController < ActionController::Base

# Prevent CSRF attaks by raising an exception
# for API , you lay want to use :null_session instead
before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_ip, keys: [:username])
end

end
