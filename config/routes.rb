Rails.application.routes.draw do
  get 'home/index'

  get 'parks/index'

  get 'parks/new'

  get 'parks/show'

  get 'parks/edit'

  root 'parks#index'

  get 'parks/:id' => 'parks#show'

  resources :parks

end
