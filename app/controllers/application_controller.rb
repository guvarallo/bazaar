class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    edit_user_registration_path
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:account_update) << :name
      devise_parameter_sanitizer.for(:account_update) << :phone_number
      devise_parameter_sanitizer.for(:account_update) << :city
      devise_parameter_sanitizer.for(:account_update) << :email
      devise_parameter_sanitizer.for(:account_update) << :province
    end
end
