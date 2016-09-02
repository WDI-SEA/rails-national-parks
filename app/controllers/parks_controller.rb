class ParksController < ApplicationController
  def all_parks
    render json: Park.order(created_at: :desc)
  end

  def new_park
    render json: Park.create(park_params)
  end

  def get_park
    render json: Park.find(params[:id])
  end

  def update_park
    park = Park.find(params[:id])
    park.update(park_params)
    render json: park
  end

  def destroy_park
    park = Park.find(params[:id]).delete
    render json: park
  end

  private

  def park_params
    params.permit(:name, :description, :picture);
  end
end
