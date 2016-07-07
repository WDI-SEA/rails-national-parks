Rails.application.routes.draw do
  root 'parks#index'
  resources :parks

  # get 'parks/index'

  # get 'parks/show'

  # get 'parks/edit'

  # get 'parks/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
