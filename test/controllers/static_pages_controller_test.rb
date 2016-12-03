require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path           #config/routes.rb中的逻辑路径
    assert_response :success
    assert_select "title","Home | Micro Posts App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title","Help | Micro Posts App"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title","About | Micro Posts App"
  end
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title","Contact | Micro Posts App"
  end
end
