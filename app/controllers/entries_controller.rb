class EntriesController < ApplicationController
  
  def new
    # Find the place for which the entry will be added
    @place = Place.find(params[:place_id])
    @entry = @place.entries.new
  end

  def create
    @place = Place.find(params[:place_id])
    @entry = @place.entries.new(entry_params)
    if @entry.save
      # Redirect to the place’s show page after savin
      redirect_to("/places/#{@place.id}")
    else
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :posted_on)
  end
end
