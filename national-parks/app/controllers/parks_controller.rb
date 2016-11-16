class ParksController < ApplicationController
  def index
  	@parks = Park.all
  	@rangers = Ranger.all
  end

  def new
  	@park = Park.new
  	@rangers = Ranger.all
  end

  def create
  	Park.create(park_params)
  	redirect_to parks_index_path
  end

  def edit
  end

  def show
  end

  def park_params
  	params.require(:park).permit(:name, :description, :picture, :ranger_ids => [])
  end

end
