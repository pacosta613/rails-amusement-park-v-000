class AttractionsController < ApplicationController

<<<<<<< HEAD
  def index
    @attractions = Attraction.all
  end

=======
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
  def new
    @attraction = Attraction.new
  end

<<<<<<< HEAD
  def create
    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to attraction_path(@attraction)
    else
      render :new
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    if @attraction.valid?
      @attraction.update(attraction_params)
=======
  def index
    @attractions = Attraction.all
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def show
    attractions_params
  end

  def edit
    attractions_params
  end

  def update
    attractions_params
    if @attraction.update(attraction_params)
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
      redirect_to attraction_path(@attraction)
    else
      render :edit
    end
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end

<<<<<<< HEAD

end
=======
  def attractions_params
    @attraction = Attraction.find(params[:id])
  end
end
>>>>>>> cddbabe1fad9edc84876235d7731947c904679b9
