class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to courses_url, :alert => exception.message
  end
  protected

  def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation, :gender, :instructor, :dob, :avatar, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
