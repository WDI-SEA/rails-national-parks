Rails.application.routes.draw do
  # get 'parks/index'
  #
  # get 'parks/new'
  #
  # get 'parks/show'
  #
  # get 'parks/edit'
  #
  # get 'home/index'
  #

  root 'home#index'
  resources :parks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
