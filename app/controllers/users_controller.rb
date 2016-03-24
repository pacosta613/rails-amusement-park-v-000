class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    redirect_to user_path(@user) if @user == current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find_by(params[:id])
    if current_user == @user
      @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nausea, :happiness, :tickets, :height, :admin, :user_id)
  end
end
