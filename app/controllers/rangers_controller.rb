class RangersController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def new
    @ranger = Ranger.new
    @parks = Park.all
  end

  def show
  end

  def edit
  end

  def create
    Ranger.create(ranger_params)
    redirect_to rangers_path
  end

  def destroy
    Ranger.find(params[:id]).delete
    redirect_to rangers_path
  end

  def update
    @ranger = Ranger.find(params[:id]).update(ranger_params)
    redirect_to rangers_path
  end

  private

  def ranger_params
    params.require(:ranger).permit(:name, :years, :park_ids => [])
  end
end
