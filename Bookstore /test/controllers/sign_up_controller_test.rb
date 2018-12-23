require 'test_helper'

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get sign_up_name_url
    assert_response :success
  end

  test "should get index" do
    get sign_up_index_url
    assert_response :success
  end

  test "should get show" do
    get sign_up_show_url
    assert_response :success
  end

  test "should get change" do
    get sign_up_change_url
    assert_response :success
  end

  test "should get order" do
    get sign_up_order_url
    assert_response :success
  end

end
