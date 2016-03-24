class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:user][:id])
    session[:user_id] = @user.id
    redirect_to user_path(@user), notice: "Login successful"
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end
