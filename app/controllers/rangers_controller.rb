class RangersController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def create
    Ranger.create(ranger_params)
    redirect_to rangers_path
  end

  def new
    @ranger = Ranger.new
  end

  def show
    @ranger = Ranger.find(params[:id])
  end

  def edit
    @ranger = Ranger.find(params[:id])
  end

  def update
    p = Ranger.find(params[:id])
    p.update(ranger_params)
    redirect_to rangers_path
  end

  def destroy
    Ranger.find(params[:id]).delete
    redirect_to rangers_path
  end

  def edit_ranger_path(ranger)
    ranger_path(ranger) + "/edit"
  end

  private

  def ranger_params
    params.require(:ranger).permit(:name, :experience, :parks)
  end
end
