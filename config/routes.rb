Rails.application.routes.draw do
  root 'parks#index'

  get 'parks/index'

  get 'parks/new'

  get 'parks/edit'

  get 'parks/:id' => 'parks#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :parks
end
