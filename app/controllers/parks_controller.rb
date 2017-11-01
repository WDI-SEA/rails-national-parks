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

  def edit
      @park = Park.find(params[:id])
  end

  def show
      @park = Park.find(params[:id])
  end

  def update
      i = Park.find(params[:id])
      i.update(park_params)
      redirect_to parks_path
  end

  def destroy
      Park.find(params[:id]).delete
      redirect_to parks_path
  end

private

  def park_params
      params.require(:park).permit(:description, :name)
  end
  
end
