class PlacesController < ApplicationController
  
  # GET /places
  def index
    @places = Place.all
  end

  # GET /places/:id
  def show
    @place = Place.find(params[:id])
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # POST /places
  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to("/places")
    else
      render("new")
    end
  end

  private

  def place_params
    params.require(:place).permit(:name)
  end
end
