class BooksController < ApplicationController
  def main
    @message ="(For Info click on the books)"
  end

  def book_prices
    @message = "The author provides coverage of how to develop Web applications
  with Ruby on Rails. Technologies discussed include Ajax, directory
  services, and Web services. A comparison is made with PHP, the most
  commonly used scripting language for developing Web applications."
  end
end
