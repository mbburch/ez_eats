class SessionsController < ApplicationController
  def new
  end

  def create
    user ||= User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user] = user.id
      redirect_to blogs_path
    else
      flash[:notice] = "Invalid Login"
      redirect_to action: 'new'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
