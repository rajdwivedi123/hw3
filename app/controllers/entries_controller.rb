class EntriesController < ApplicationController
  # GET /places/:place_id/entries/new
  def new
    # Find the place for which the entry will be added.
    @place = Place.find(params[:place_id])
    @entry = @place.entries.new
  end

  # POST /places/:place_id/entries
  def create
    @place = Place.find(params[:place_id])
    @entry = @place.entries.new(entry_params)
    if @entry.save
      # Redirect to the place’s show page after saving.
      redirect_to("/places/#{@place.id}")
    else
      render :new
    end
  end

  private

  # Allow only the permitted parameters.
  def entry_params
    params.require(:entry).permit(:title, :description, :posted_on)
  end
end
