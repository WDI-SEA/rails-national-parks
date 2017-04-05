class ParkController < ApplicationController
  def index
    @park = Park.all
  end

  def show
    #singular post
    @park = Park.find(params[:id])
  end

  def new
    @park = Park.new
  end

  def create
    # create post and put into the database
    # based on the model name
    Park.create(park_params)

    # redirect after to submit
    redirect_to '/'
  end

  def edit
    @park = Park.find(params[:id])
  end

  def update
    # param is from url param
    p = Park.find(params[:id])

    # from the private
    p.update(park_params)

    redirect_to park_path
  end

  def destroy
    Park.find(params[:id]).delete
    redirect_to '/'
  end

  private

  def park_params
    ## will only allow title and content to be sent to database
    params.require(:park).permit(:name, :description, :picture)

  end

end