class RangersController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def new
    @ranger = Ranger.new
    @parks = Park.all
  end

  def show
    @ranger = Ranger.find(params[:id])
  end

  def create
    Ranger.create(ranger_params)
    redirect_to rangers_path
  end

  def edit
    @ranger = Ranger.new
    @parks = Park.all
  end

  def update
    Ranger.find(params[:id]).update(ranger_params)
    redirect_to ranger_path(params[:id])
  end

  private

  def ranger_params
    params.require(:ranger).permit(:name, :year, :park_ids => [])
  end
end

