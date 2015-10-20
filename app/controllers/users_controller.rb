class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(new_user_params)
    if user.save
      session[:user] = user.id
      flash[:notice] = 'user successfully created'
      redirect_to root_path
    else
      flash[:notice] = "Invalid User Info.  Please enter your name, a valid email and a password."
      redirect_to action: 'new'
    end
  end

  private
  def new_user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
