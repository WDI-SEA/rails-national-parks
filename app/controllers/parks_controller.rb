class ParksController < ApplicationController
  def new
    @park = Park.create()
  end

  def edit
  end

  def index
  end
end
