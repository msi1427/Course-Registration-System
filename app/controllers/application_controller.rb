class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer
        .permit(:sign_up) do |u| u.permit(:name, :std_id, :department, :semester, :role, :email, :password )
    end
    devise_parameter_sanitizer
        .permit(:account_update) do |u| u.permit(:name, :std_id, :department, :semester, :role, :email, :password, :current_password )
    end
  end
end
