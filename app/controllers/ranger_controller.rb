class RangerController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def new
    @rangers = Ranger.new(params[:id])
  end

  def show
    @rangers = Ranger.find(params[:id])
  end

  def create
    @rangers = Ranger.create(ranger_params)
    redirect_to root_path
  end

  def edit
    @rangers = Ranger.find(params[:id])
  end

  def update
    r = Ranger.find(params[:id])
    r.update(ranger_params)
    redirect_to ranger_path
  end

  def destroy
    Ranger.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def ranger_params
    params.require(:rangers).permit(:name, :years)
  end
end
