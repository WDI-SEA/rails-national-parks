class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @parks = Park.find(params[:id])
    parkRanger = ParksRangers.find_by(park_id: params[:id])
    @rangers  = Ranger.find(parkRanger['ranger_id'])

  end

  def edit
    @parks = Park.find(params[:id])
  end

  def create 
    Park.create(park_params)
    redirect_to parks_path
  end

  def new
    @parks = Park.new
    @rangers = Ranger.all
  end

  def update
    p = Park.find(params[:id])
    p.update(park_params)
    redirect_to parks_path
  end

  def destroy
    Park.find(params[:id]).destroy
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture, :ranger_ids => [])
  end
end
