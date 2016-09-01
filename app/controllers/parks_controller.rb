class ParksController < ApplicationController
  def index
    #complete
    @parks = Park.all
  end

  def new
    @parks = Park.new
  end

  def create
    Park.create(park_params)
    redirect_to parks_path

  end

  def show
    #complete
    @parks = Park.find(params[:id])
  end

  def edit
    @parks = Park.find(params[:id])
  end

  def update
    p = Park.find(params[:id])
    p.update(park_params)
    redirect_to parks_path
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
