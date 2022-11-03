class UsersController < ApplicationController
  def index
  end

  def show
    @users = User.find_by(id: params[:id])
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        description: params[:description],
        email: params[:email],
        age: params[:age],
        password: params[:password],
        password_confirmation: params[:confirm_password],
        city_id: rand(1..10)
      )

    if @users.save
      # puts 'it workkksss'
      redirect_to '/'
    else
      # puts 'noooooo'
      render new_user_path
    end
  end

  def edit
  end

  def update 
  end

  def destroy
  end
end