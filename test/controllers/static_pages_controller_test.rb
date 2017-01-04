require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title","关于 | 天天微博"
  end

end
