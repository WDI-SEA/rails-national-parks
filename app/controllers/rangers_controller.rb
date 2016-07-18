class RangersController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def show
    @ranger = Ranger.find(params[:id])
  end

  def new
    @ranger = Ranger.new
    @parks = Park.all
  end

  def create
    Ranger.create (ranger_params)
    redirect_to rangers_path
  end

  def edit
    @ranger = Ranger.find(params[:id])
    @parks = Park.all
  end

  def update
    @ranger = Ranger.find(params[:id]).update (ranger_params)
    redirect_to ranger_path
  end

  def destroy
    @ranger = Ranger.find(params[:id]).destroy
    redirect_to rangers_path
  end

  private

  def ranger_params
    params.require(:ranger).permit(:name, :years, :park_ids => [])
  end

end
