class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:login, :create, :signup, :new_user]
  def login
  end

  def signup
  end

  def new_user
    user = User.new(username: params[:session][:username], password: params[:session][:password])
    if user.save()
      flash[:success] = "Welcome to My Chat App #{user.username}"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "invalid username"
      render 'signup'
    end
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      flash.now[:error] = "There was something wrong with your login information"
      render 'login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end

  private
  def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in"
      redirect_to root_path
    end
  end

  # def user_params
  #   params.require(:user).permit(:username, :password)
  # end
end
