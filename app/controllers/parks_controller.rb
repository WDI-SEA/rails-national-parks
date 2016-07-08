class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def create
    Park.create(park_params)
    uploaded_file = params[:park][:picture].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
    # render cloudinary_file['public_id']
    redirect_to parks_path
    # render json: cloudnary_file
  end

  def new
    @park = Park.new
  end

  def edit
    @park = Park.find(params[:id])
  end

  def show
    @park = Park.find(params[:id])  
  end

  def update
    t = Park.find(params[:id])
    t.update(park_params)
    redirect_to parks_path
  end

  def destroy
    d = Park.find(params[:id])
    d.destroy
    redirect_to parks_path
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end

end
