class ParksController < ApplicationController
  def index
  	@parks = Park.all
  end

  def new
  	@park = Park.new
  end

  def create
  	Park.create(parks_params)
  	redirect_to parks_path
	end
	
  def show
    @park = Park.find(params[:id])
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    p = Park.find(params[:id])
    p.update(parks_params)
    redirect_to parks_path
  end

  def destroy
    park = Park.find(params[:id])
    park.rangers.clear
    park.delete
    redirect_to parks_path
  end

  private
  def parks_params
  	params.require(:park).permit(:parkname, :description, :picture, :ranger_ids => [])
  end

end
