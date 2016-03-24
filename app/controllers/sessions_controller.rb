class SessionsController < ApplicationController

  def new
<<<<<<< HEAD
    @user = User.new
=======
    @session = Sessions.new
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
  end

  def create
    @user = User.find(params[:user][:id])
    session[:user_id] = @user.id
<<<<<<< HEAD
    redirect_to user_path(@user), notice: "Login successful"
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end
=======
    redirect_to user_path(@user)
  end

  def destroy
    session.destroy
    redirect_to '/'
  end

end
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
