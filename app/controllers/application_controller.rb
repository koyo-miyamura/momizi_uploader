class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    contents_index_path
  end

  protected
    def configure_permitted_parameters
      #strong parametersを設定し、usernameを許可
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    end

  private
    def sign_in_required
      unless user_signed_in?
        flash[:error] = ["ログインしてください"]
        redirect_to new_user_session_url
      end
    end
end
