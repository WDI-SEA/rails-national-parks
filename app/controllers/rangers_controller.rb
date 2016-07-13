class RangersController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def new
    @ranger = Ranger.new
    # render json: Ranger.new
  end

  def create
    ranger = Ranger.new(ranger_params)
    if ranger.save
      flash[:success] = "Created a new ranger"
      redirect_to rangers_path
    else
      flash[:danger] = "Failed to create a new ranger"
      redirect_to new_ranger
    end
  end

  def update
    ranger = Ranger.find(params[:id])
    ranger.update(ranger_params)
    redirect_to ranger_path
  end

  def edit
    @ranger = Ranger.find(params[:id])
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
