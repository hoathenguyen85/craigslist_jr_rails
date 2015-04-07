class AuthenticationController < ApplicationController

  def index
  end

  def create
   user = User.find_by(email: params[:email])
   if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect user_path(user)
  else
    session[:message] = "invalid username and/or password"
    redirect '/?error=true'
  end
end

end
