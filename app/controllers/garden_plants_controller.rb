class GardenPlantsController < ApplicationController
  # all the plants that need to be watered today(like an index)
  def watering

    @plants = current_user.garden_plants.to_be_watered_today
  end

  # watering a single plant
  def water
    @plant = GardenPlant.find(params[:id])
    @plant.mark_as_watered
    redirect_to plant_watering_path
  end

  def index
    @garden_plants = current_user.garden_plants
  end

  def show
    @garden_plant = GardenPlant.find(params[:id])
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @garden_plant = GardenPlant.new
  end

  def create
    @garden_plant = GardenPlant.new(strong_params)
    @garden_plant.plant = Plant.find(params[:plant_id])
    @garden_plant.water_on = Date.today
    @garden_plant.user = current_user


    if @garden_plant.save

       UserMailer.plant_added(current_user).deliver_now
       redirect_to my_garden_plants_path
    else
      # this link does not refresh my variables (does not go through the action in controller, just the view)
      render :new
    end
  end

  def destroy
    @garden_plant = GardenPlant.find(params[:id])
    @garden_plant.destroy
    redirect_to my_garden_plants_path
  end

  private

  def strong_params
    params.require(:garden_plant).permit(:location)
  end
end
