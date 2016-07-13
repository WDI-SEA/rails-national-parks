class RangerController < ApplicationController
  def index
    @rangers = Ranger.all
  end

  def destroy
    d = Ranger.find(params[:id])
    d.destroy
    redirect_to ranger_index_path
  end
end
