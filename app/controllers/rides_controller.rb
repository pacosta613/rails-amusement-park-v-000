class RidesController < ApplicationController

<<<<<<< HEAD
  def new
  end

=======
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
  def create
    @user = User.find(session[:user_id])
    @ride = Ride.create(:user_id => params[:user_id], :attraction_id => params[:attraction_id])
    flash[:notice] = @ride.take_ride
    redirect_to user_path(@ride.user)
  end
<<<<<<< HEAD

end
=======
  
end
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
