class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    @species = Species.all
  end

  def show
    @plant = Plant.find(params[:id])
  end
  def search
  	if params[:query].present?
  		@plants = Plant.plants_search(params[:query])
  		render :index
  	else
  		@plants = Plant.all

  		render :index 
  	end
  end
  def autocomplete
    results = Plant.plants_search(params[:q])
   
    render json: results.map(&:name)
  end

end
