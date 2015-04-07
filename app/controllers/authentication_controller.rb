class AuthenticationController < ApplicationController

  # this is the controller for the GET signup
  def index

  end


  # this is the controller for the POST signup
  def create
   user = User.find_by(email: params[:email])

   p user
   p params[:email]
   p params
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to authentication_index_path
    end
  end
end
