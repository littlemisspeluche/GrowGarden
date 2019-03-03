class GardenPlantsController < ApplicationController
  def watering
    @plants = current_user.garden_plants.to_be_watered_today
  end

  def water
    @plant = GardenPlant.find(params[:id])
    @plant.mark_as_watered

    redirect_to plant_watering_path
  end

  def index
    @garden_plant = GardenPlant.where(user_id: current_user)
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
    @garden_plant.status = Status.create
    @garden_plant.user = current_user
    if @garden_plant.save
      redirect_to garden_plants_path
    else
      # this link does not refresh my variables (does not go through the action in controller, just the view)
      render :new
    end
  end

  def destroy
    @garden_plant = GardenPlant.find(params[:id])
    @garden_plant.destroy
    redirect_to garden_plants_path
  end



  #LIGHT
  ##Full Sun                  ==>>>>> 3
  #Full Sun to Partial Shade  ==>>>>> 2
  ## Partial Shade            ==>>>>> 1

  ##TEMPERATURE
  #{"20 and 26"

  # temp = "20 and 30"
  #splitting = temp.split
  #(splitting[0] + splitting[2]) / 2 = 25 #this is our average of temp


  ## WATERING
  ## Mesic                    ===>>>> 5
  ## Mesic Dry                ===>>>> 3
  ## Dry                      ===>>>> 1









  private

  def strong_params

    params.require(:garden_plant).permit(:location)
  end
end



