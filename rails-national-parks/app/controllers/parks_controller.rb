class ParksController < ApplicationController
  def index
  	@parks = Park.all
  end

  def create
  	Park.create(park_params)
  	redirect_to parks_path
  end

  def new
  	@park = Park.new
  end

  def show
  	@park = Park.find(params[:id])
  end

  def park_params
  	params.require(:park).permit(:name, :description, :picture)
  end

  def edit
  end
end
