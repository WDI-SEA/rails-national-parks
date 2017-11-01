class MainController < ApplicationController
  def index
    @parks = Park.all
  end

  def about
  end


end
