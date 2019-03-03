class PlantsController < ApplicationController

  def show
    @plant = Plant.find(params[:id])
  end



  def index
    @species = Plant.where(species_id: @plants)
  	if params[:query].present?
  		@plants = Plant.plants_search(params[:query])
  		render :index
  	else
  		@plants = Plant.all

  	end
  end
  def autocomplete
    results = Plant.plants_search(params[:q])
    render json: results.map(&:name)
  end

end
