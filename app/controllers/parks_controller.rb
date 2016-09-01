class ParksController < ApplicationController
  def index
    @park = Park.all
  end

  def new
    @park = Park.new
  end

  def create
    Park.create(park_params)
    redirect_to parks_path
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    park = Park.find(params[:id])
    park.update(park_params)
    redirect_to parks_path
  end

  def show
    @park = Park.find(params[:id])
  end

  def destroy
    Park.find(params[:id]).delete
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
end
