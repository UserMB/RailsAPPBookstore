require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get main_welcome_url
    assert_response :success
  end

  test "should get goodbye" do
    get main_goodbye_url
    assert_response :success
  end

end
