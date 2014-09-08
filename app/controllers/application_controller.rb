class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :user_name
    devise_parameter_sanitizer.for(:sign_up) << :home_city
    devise_parameter_sanitizer.for(:sign_up) << :home_state
    devise_parameter_sanitizer.for(:sign_up) << :home_country
    devise_parameter_sanitizer.for(:sign_up) << :gender
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
