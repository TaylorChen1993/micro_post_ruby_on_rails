class UsersController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
  
  def index
    @users = User.paginate(page: params[:page])#分页取回用户
  end
  
  def show
    @user = User.find(params[:id])#将访问的用户
    
    #<ActionController::Parameters {"controller"=>"users", "action"=>"show", "id"=>"1"} permitted: false>
    #debugger#若删除注释，程序在此处中断，ruby on rails tutorial中文版P214
    @microposts = @user.microposts.paginate(page: params[:page])#将访问的用户
    @feed_items = @user.feed.paginate(page: params[:page])
    if logged_in? && current_user?(@user)
    
      @micropost = current_user.microposts.build
      
    end
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
      render 'new'#转向new方法
    end
  end#def end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # 处理更新成功的情况
      flash[:success] = "已保存"
      redirect_to @user
      else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "用户已删除"
    redirect_to users_url
  end
  
  private
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation) 
      #健壮参数（strong parameter）技术。这个技术 可以指定需要哪些请求参数，以及允许传入哪些请求参数。防止漏洞：如传入多余参数
    end
    
  # 前置过滤器


  # 确保是正确的用户
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # 确保是管理员
  def admin_user
    #debugger
    redirect_to(root_url) unless current_user.admin?
    
  end

end#class end
