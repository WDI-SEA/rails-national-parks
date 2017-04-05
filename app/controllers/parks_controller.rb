class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def new
    @park = Park.new
  end

  def create
    Park.create(park_params)
    redirect_to parks_path
  end

  # Edit route is to get this specific park to update
  def edit
    @park = Park.find(params[:id]).update(park_params)
    redirect_to parks_path
  end

  # Update route is the actual PUT method to edit data in your DB
  def update
    p = Park.find(params[:id])
    # p.udpate(park_params).....
  end

  def show
    @park = Park.find(params[:id])
  end

  def destory
    Park.find(params[:id]).delet
    redirect_to parks_path
  end

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
  
end
