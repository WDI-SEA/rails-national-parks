class RangersController < ApplicationController
  def index
  	@rangers = Ranger.all
  end

  def show
  	@ranger = Ranger.find(params[:id])
  end

  def new
  	@park = Park.all
  	@ranger = Ranger.new
  end


  def edit
  	@ranger = Ranger.find(params[:id])
  	

  end

  def create
  	Ranger.create(ranger_params)
  	redirect_to parks_path
  end

  def ranger_params
  	params.require(:ranger).permit(:name, :years, :park_ids => [])
  end
end
