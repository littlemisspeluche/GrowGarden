class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @Gardenplants = Gardenplant.all
  end
end
