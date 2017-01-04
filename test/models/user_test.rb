require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup#setup在test之前运行
    @user=User.new(name:"Example User",email:"user@example.com",password: "foobar", password_confirmation: "foobar")#password是虚拟属性，rails中有，但数据库中不存在
  end
  
  
  test "should be valid" do
    assert @user.valid?
  end
  
#-------------------------------------------------name----------------------------------------------------------------------------------
  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?#执行app/models/user.rb中的所有validation
  end
  test "name should not be too long" do
    @user.name= "a"*51
    assert_not @user.valid?
  end 
  
  
#--------------------------------------------------email---------------------------------------------------------------------------------
  test "email should be present" do
    @user.email= ""
    assert_not @user.valid?
  end
  test "email should not be too long" do
    @user.email= "a"*244+"@example.com"
    assert_not @user.valid?
  end
  test "email validation should reject invalid addresses" do#测试许多个非法email
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
    foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end#each end
  end#this test end
  test "email addresses should be unique" do
    duplicate_user = @user.dup  #dup() returns an exact copy of the ActionController::Parameters instance即:复制json对象   
    @user.save#存储到数据库中
    assert_not duplicate_user.valid?#验证duplicate_user,并不存储到数据库中
  end
  
  
#--------------------------------------------------password--------------------------------------------------------------------------------
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

#--------------------------------------------------authentic--------------------------------------------------------------------------------
  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end

#--------------------------------------------------micropost--------------------------------------------------------------------------------  
  test "associated microposts should be destroyed" do
    @user.save
    @user.microposts.create!(content: "Lorem ipsum")
    assert_difference 'Micropost.count', -1 do
      @user.destroy
    end
  end  
  
end#class end
