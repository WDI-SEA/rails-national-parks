Rails.application.routes.draw do
  # get 'rangers/index'

  get 'rangers' => 'rangers#index'

  get 'rangers/new'

  get 'rangers/show'

  get 'rangers/edit'

  get 'parks/index'

  get 'parks/new'

  get 'parks/show'

  get 'parks/edit'

  root 'main#index'

  resources :parks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
