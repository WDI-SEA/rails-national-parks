Rails.application.routes.draw do
  # get 'parks/index'

  get 'parks/create'

  get 'parks/show'

  get 'parks/edit'

  root 'parks#index'

  resources :parks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
