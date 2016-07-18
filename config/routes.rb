Rails.application.routes.draw do
  root 'main#index'


  resources :parks
  resources :rangers

#Allows me to link from /views/main/index to /views/parks/index
  get "/rails-national-parks/app/controllers/parks_controller.rb", to: "parks#index", as: "index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
