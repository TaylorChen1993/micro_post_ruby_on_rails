class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #这是所有控制器的基类
  protect_from_forgery with: :exception
  include SessionsHelper
end
