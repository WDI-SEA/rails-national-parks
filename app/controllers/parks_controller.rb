class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def create
    # render json: params
    Park.create(park_params)
    redirect_to parks_path
  end

  def new
    @park = Park.new
  end

  def edit
    @park = Park.find(params[:id])
  end

  def show
    @park = Park.find(params[:id])
  end

  def update
    p = Park.find(params[:id])
    p.update(park_params)
    redirect_to parks_path
  end

  def destroy
    d = Park.find(params[:id])
    d.destroy
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:name, :description)
  end

end
