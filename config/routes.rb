Rails.application.routes.draw do

  resources :parks
  resources :ranger

  root 'main#index'

end
