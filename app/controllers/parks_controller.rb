class ParksController < ApplicationController
  def index
    @parks = Park.all
    puts @parks
  end

  def new
    @park = Park.new
  end

  def create
    Park.create(park_params)
    redirect_to parks_path
  end

  def show
    @park = Park.find(params[:id])
    #render json: params
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
      p = Park.find(params[:id])
      p.update(park_params)
      redirect_to parks_path
  end

  def destroy
    p = Park.find(params[:id])
    p.delete
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:description, :picture)
  end
end
