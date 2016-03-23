class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all 
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
    if @user == current_user
      redirect_to user_path(@user)
    end
  end

  def show
    users_params
  end

  def update
    users_params
    if current_user == @user
      @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end

  private

  def user_params
     params.require(:user).permit(:name, :nausea, :happiness, :tickets, :height, :admin)
  end

  def users_params
    @user = User.find(params[:id])
  end

end