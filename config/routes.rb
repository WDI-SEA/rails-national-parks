Rails.application.routes.draw do

  # get 'rangers/index'

  # get 'rangers/show'

  # get 'rangers/new'

  # get 'rangers/edit'

  get 'parks/index'

  get 'parks/show'

  get 'parks/new'

  get 'parks/edit'

  get 'main/index'

  resources :parks
  resources :rangers
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
