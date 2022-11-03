class AuthorsController < ApplicationController
  def show
    def show
      @users= User.find(params[:id])
      @gossips = @users.gossips
  end

end
