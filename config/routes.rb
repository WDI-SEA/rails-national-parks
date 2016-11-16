Rails.application.routes.draw do
  get 'rangers/index'

  get 'rangers/new'

  get 'rangers/show'

  get 'rangers/edit'

  get 'parks/index'

  get 'parks/new'

  get 'parks/show'

  get 'parks/edit'

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :parks
  resources :rangers
end
