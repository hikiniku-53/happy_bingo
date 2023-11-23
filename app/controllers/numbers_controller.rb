class NumbersController < ApplicationController
  def index

    @numbers = current_user.numbers
  end

  def create
    number = Number.new
    number.user_id = current_user.id
    loop {
      create_number
      random = Random.new()
      number.number = random.rand(75)
      if number.save
        redirect_to numbers_path
      else
        next
      end
    }


  end

  def destroy
  end

  protected

  def create_number

  end

end
