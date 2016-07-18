Rails.application.routes.draw do

  resources :parks
  resources :rangers
  # resources :rangers, except: [:create, :patch]
  # post 'ranger/new' => 'ranger#create'
  # post 'ranger/:id/edit' => 'ranger#update'

  root 'main#index'

end
