class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def new
    @park = Park.new
  end

  def create
    park = Park.create park_params
    redirect_to parks_path
  end

  def show
    @park = Park.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
    park = Park.find(params[:id])
    park.delete
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
end
