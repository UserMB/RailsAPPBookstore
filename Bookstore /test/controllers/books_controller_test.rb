require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get books_main_url
    assert_response :success
  end

  test "should get book_prices" do
    get books_book_prices_url
    assert_response :success
  end

end
