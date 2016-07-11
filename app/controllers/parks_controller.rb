class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def show
    @parks = Park.find(params[:id])
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    Park.find(params[:id]).update(park_params)
    redirect_to park_path(params[:id])
  end

  def new
    @park = Park.new
  end

  def create
    # render json: params
    Park.create(park_params)
    redirect_to parks_path
  end

  def destroy
    Park.find(params[:id]).destroy
    redirect_to parks_path
  end

  private
  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end

end
