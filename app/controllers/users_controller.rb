class UsersController < ApplicationController

  # This is the controller for the signin
  def new
    @user = User.new
  end

  def show
  end

  # This is the controller fot the signin for the post
  def create
    if user_params[:password] == user_params[:password_digest]
    @user = User.new(user_params)
  end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_digest)
  end
end
