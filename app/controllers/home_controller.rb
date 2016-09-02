class HomeController < ApplicationController
  def index
    gon.stuff = 'things'
    gon.jobbers = ['d', 'da', 'drf']
    gon.parks = Park.all
  end

  def parks
    parks = Park.all
    render json: parks
  end

end
