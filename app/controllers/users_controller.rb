class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])#ActionController::Parameters < Object,rails将提交的表单构成Parameters,params是Parameters中的一个成员，是表单中input构成的部分
  end
  
  def new
  end

end
