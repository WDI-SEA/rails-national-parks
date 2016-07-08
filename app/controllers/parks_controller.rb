class ParksController < ApplicationController
  def index
    @park = Park.all
  end

  def new
    @park = Park.new    #what does .new do/mean?
  end

  def create  #no views page
    Park.create(park_params)    #Park is referencing the database table 
    redirect_to parks_path
  end

  def show
    # render json: params
     # this is the form data
    @park = Park.find(params[:id])     #id is referencing the rows via the id in the table?
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    p = Park.find(params[:id])
    p.update(park_params)           # we're only updating the name, descr, picture
    redirect_to parks_path
  end

  def destroy #no views page
    p = Park.find(params[:id])    # find by id and destroy
    p.destroy                   # we don't need (park_params) because we want to delete the whole row
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end

end
