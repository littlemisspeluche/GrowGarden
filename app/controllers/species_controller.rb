class SpeciesController < ApplicationController
  def index
    @species = Species.all
  end

  def show
    @plants = Plant.all
  end
end
