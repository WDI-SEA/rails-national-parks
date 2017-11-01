Rails.application.routes.draw do
  get 'parks/index'

  get 'parks/new'

  get 'parks/create'

  get 'parks/show'

  get 'parks/edit'

  get 'parks/update'

  get 'parks/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :parks

end
