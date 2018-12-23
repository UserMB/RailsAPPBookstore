class MainController < ApplicationController
  def welcome
    @message ="Welcome to our website"
    @entries = Entry.all
    @entries.each {|entry| entry.destroy}

  end

  def goodbye
    @message ="Thanks for shopping by :)"
    @entries = Entry.all

  end
end
