require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get signup_path     #get方法访问注册页面，但get 和 post 之间没有关系，向 users_path 发送 POST 请求之前没必要先向signup_path 发送 GET 请求。
    assert_no_difference 'User.count' do
      #Assertion that the numeric result of evaluating an expression is not changed before and after invoking the passed in block.
      post users_path, params: { 
        user: { name: "",email: "user@invalid",password: "foo",password_confirmation: "bar" } 
      }#post方法提交表单
    end
    assert_template 'users/new'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: "Example User",email: "user@example.com",password: "password",password_confirmation: "password" } }
      end
    follow_redirect!#Follow a single redirect response. If the last response was not a redirect, an exception will be raised. Otherwise, the redirect is performed on the location header.
    assert_template 'users/show'
    assert is_logged_in? 
  end
  
  
  
end
