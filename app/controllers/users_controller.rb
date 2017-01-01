class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #<ActionController::Parameters {"controller"=>"users", "action"=>"show", "id"=>"1"} permitted: false>
    #debugger#若删除注释，程序在此处中断，ruby on rails tutorial中文版P214
  end
  
  def new
    @user = User.new
  end
  
  def create
    #@user = User.new(params[:user]) # P228底，params 哈希中包含每次请求的信息，例 如向 /users/1 发送请求时，params[:id] 的值是用户的 ID。params[:user] 是创建用户所需的参数
    @user = User.new(user_params) #调用private方法
    if @user.save
      # 处理注册成功的情况
        log_in @user 
        flash.now[:success] = "欢迎来到天天微博!"#修改flash数组，而在view中调用flash数组
        redirect_to @user
      else
      render 'new'#重新打开页面
    end
  end#def end
  
  private
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation) 
      #健壮参数（strong parameter）技术。这个技术 可以指定需要哪些请求参数，以及允许传入哪些请求参数。防止漏洞：如传入多余参数
    end
end#class end
