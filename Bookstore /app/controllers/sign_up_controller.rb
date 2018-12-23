class SignUpController < ApplicationController
  def name
    @fname = params[:fst_name]
    @lname = params[:lst_name]
    if @fname then @entry = Entry.create({:first_name => @fname, :last_name =>  @lname})
  end

  def index
    @person = Entry.last
    @fname = @person.first_name
    @lname = @person.last_name
    @person.update_attributes({:book_name => params[:book],
                               :book_quantity => params[:quantity]})
    if !@person.book_quantity.nil? then render "order" end
  end

  def show
    stock = 1
    @person = Entry.last
    if !@person.book_quantity.nil? then
      if (stock *  3) < @person.book_quantity
      then @message = "!!Sorry we don't have this in stock!!. \n
                Please go back and re-enter less quantity."
      else  @message = "Your book is in stock... \n
                        Please enter address details if you which to continue"
      end
    else @message = "Seem to have an empty record??"
    end
  end

  def change
    @person = Entry.last
    @fname = @person.first_name
    @lname = @person.last_name
    @entry = Entry.create({:first_name => @fname, :last_name =>  @lname, :book_name => params[:book], :book_quantity => params[:quantity]})
  end

  def order
    @person = Entry.find(:last)

  end

  def deliver
    @person = Entry.last
    @fname = @person.first_name
    @lname = @person.last_name
    @book = @person. book_name
    @quantity = @person. book_quantity
    @address = params[:address]
  end
  end
end


