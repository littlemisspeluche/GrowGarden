class SpeciesController < ApplicationController
  def index
    @species = Species.all
  end

  def show
    # @species = Species.find(params[:id])
    @plants = Plant.all
  end
end
