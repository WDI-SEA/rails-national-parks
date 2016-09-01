Rails.application.routes.draw do
  # get 'home/index'

  # get 'parks/index'

  # get 'parks/new'

  # get 'parks/edit'

  # get 'parks/show'

  root 'home#index'

  resources :parks


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
