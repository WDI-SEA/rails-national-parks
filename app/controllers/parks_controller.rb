class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
  end

  def new
    @park = Park.new
  end

  def create
    Park.create (park_params)
    redirect_to parks_path
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    @park = Park.find(params[:id]).update (park_params)
    redirect_to park_path
  end

  def destroy
    @park = Park.find(params[:id]).destroy
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :url)
  end

end
