Rails.application.routes.draw do
  root 'home#index'

  # get 'parks/index'

  # get 'parks/new'

  # get 'parks/create'

  # get 'parks/edit'

  # get 'parks/update'

  # get 'parks/destroy'

  resources :parks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
