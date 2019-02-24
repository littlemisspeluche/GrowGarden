class CategoriesController < ApplicationController
  def index

  	@categories = Category.all
  	raise
  end

  def show
  	@category = Category.find(params[:id])
  end
end
