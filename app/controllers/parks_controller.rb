class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def new
  end

  def show
    @park = Park.find(params[:id])
  end

  def edit
  end

  def update
  end

  def create
    # No view - redirect after creating
  end

  def destroy
    # No view - redirect after destroying
  end
end
