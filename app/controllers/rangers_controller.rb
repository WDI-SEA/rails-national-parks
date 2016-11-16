class RangersController < ApplicationController
  def index
  	@rangers = Ranger.all
  end

  def new
  	@ranger = Ranger.new
  end

  def create
  	Ranger.create(ranger_params)
  	redirect_to rangers_path
  end

  def show
  end

  def edit
  end

  private
  def ranger_params
  	params.require(:ranger).permit(:name, :park_ids => [])
  end
end
