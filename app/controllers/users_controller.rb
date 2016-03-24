class UsersController < ApplicationController

  def new
    @user = User.new
  end

<<<<<<< HEAD
=======
  def index
    @users = User.all 
  end

>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
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
<<<<<<< HEAD
    redirect_to user_path(@user) if @user == current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find_by(params[:id])
=======
    if @user == current_user
      redirect_to user_path(@user)
    end
  end

  def show
    users_params
  end

  def update
    users_params
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
    if current_user == @user
      @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

<<<<<<< HEAD
  private

  def user_params
    params.require(:user).permit(:name, :nausea, :happiness, :tickets, :height, :admin, :user_id)
  end
end
=======
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
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
