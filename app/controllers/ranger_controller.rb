class RangerController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def new
    @ranger = Ranger.new
  end

  def create
    ranger = Ranger.new(ranger_params)
    if ranger
      flash[:success] = "Created a new ranger"
      redirect_to ranger_index_path
    else
      flash[:danger] = "Failed to create a new ranger"
      redirect_to new_ranger
    end
  end

  def show
    @ranger = Ranger.find(params[:id])
  end

  def destroy
    d = Ranger.find(params[:id])
    d.destroy
    redirect_to ranger_index_path
  end

  private

  def ranger_params
    params.require(:ranger).permit(:name, :years)
  end
end
