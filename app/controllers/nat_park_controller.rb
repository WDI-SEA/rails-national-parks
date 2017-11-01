class NatParkController < ApplicationController
  def index
    @parks = Park.all
  end

  def create
    Park.create(park_params)
    redirect_to nat_park_index_path
  end

  def new
    @park = Park.new
  end

  def edit
    @park = Park.find(params[:id])
  end

  def show
    @park = Park.find(params[:name])
  end

  def update
    p = Park.find(params[:id])
    p.update(park_params)
    redirect_to park_path
  end

  def destroy
    Park.find(params[:id]).delete
    redirect_to '/index'
  end

  private

  def park_params
    params.require(:park).permit(:name, :description)
  end

end
