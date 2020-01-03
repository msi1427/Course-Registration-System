class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_cache_buster

  def set_cache_buster
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer
        .permit(:sign_up) do |u| u.permit(:name, :std_id, :department, :semester, :role, :email, :password )
    end
    devise_parameter_sanitizer
        .permit(:account_update) do |u| u.permit(:name, :std_id, :department, :semester, :role, :email, :password, :current_password )
    end
  end
end
