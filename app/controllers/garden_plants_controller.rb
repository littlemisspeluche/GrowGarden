class GardenPlantsController < ApplicationController

  def index
    @garden_plants = GardenPlant.all
  end

  def show
    @garden_plant = GardenPlant.find(params[:id])
  end

  def new
    @garden_plant = GardenPlant.new
  end

  def create
    @garden_plant = GardenPlant.new(params[:garden_plant])
    @garden_plant.plant = Plant.find(params[:plant_id])
    @garden_plant.user = current_user
    @garden_plant.save!
  end

  def edit

  end

  def update

  end

  def destroy
    @garden_plant = GardenPlant.find(params[:id])
    @garden_plant.destroy
  end
end



