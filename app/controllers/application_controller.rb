class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #这是所有控制器的基类
  protect_from_forgery with: :exception
  include SessionsHelper
  private
    # 确保用户已登录
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "您还未登录"
        redirect_to login_url
      end
    end
end
