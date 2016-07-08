class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def new
    @park = Park.new
  end

  def show
    @park = Park.find(params[:id])
  end

  def edit
  end

  def update
  end

  def create
    # No view - redirect after creating
    Park.create(park_params)
    redirect_to parks_path
  end

  def destroy
    # No view - redirect after destroying
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
end
