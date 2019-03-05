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
    @garden_plant = GardenPlant.where(user_id: current_user)
  end

  def show
    @garden_plant = GardenPlant.find(params[:id])
    case @garden_plant.health
    when 0
      @health = "85%"
    when 1
       @health =  "65"
    when 2
        @health = '55%'
    end

  end






  def new
    @plant =  Plant.find(params[:plant_id])
    @garden_plant = GardenPlant.new
  end

  def create
    @garden_plant = GardenPlant.new(strong_params)
    @garden_plant.plant = Plant.find(params[:plant_id])
    @garden_plant.status_today
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


