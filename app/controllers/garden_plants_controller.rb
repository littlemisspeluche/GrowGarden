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
    @garden_plant = GardenPlant.new(strong_params)
    @garden_plant.plant = Plant.find(params[:plant_id])
    @garden_plant.user = current_user

    if @garden_plant.save!
      #this is just a regular link,
      redirect_to garden_plants_path
    else
      #this link does not refresh my variables (does not go through the action in controller, just the view)
      render :new_plant_garden_plant
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @garden_plant = GardenPlant.find(params[:id])
    @garden_plant.destroy
    redirect_to garden_plants_path
  end

  private

  def strong_params
    params.require(:garden_plant).permit(:status, :location)
  end
end



