class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    contents_index_path
  end

  private
      def sign_in_required
        unless user_signed_in?
          flash[:error] = ["ログインしてください"]
          redirect_to users_login_url
        end
      end
end
