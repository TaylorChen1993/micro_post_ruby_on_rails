module SessionsHelper
    # 登入指定的用户
    def log_in(user)
        session[:user_id] = user.id
        #session[:user_id]是Rails 提供的 session 方法，与Sessions 控制器没有关系
        #这么做会在用户的浏览器中创建一个临时 cookie，内容是加密后的用户 ID。在后续的请求中，可以使用 session[:user_id] 取回这个 ID。 
    end
    
    # 返回当前登录的用户（如果有的话） 
    def current_user 
        @current_user ||= User.find_by(id: session[:user_id]) 
    end
    
    # 如果用户已登录，返回 true ，否则返回 false 
    def logged_in? 
        !current_user.nil? 
    end 
    
    # 退出当前用户 
    def log_out 
        session.delete(:user_id) 
        @current_user = nil 
    end 
end
