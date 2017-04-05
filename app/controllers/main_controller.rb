class MainController < ApplicationController
def index
    @parks = Park.all
  end
end
