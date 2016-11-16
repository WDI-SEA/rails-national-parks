Rails.application.routes.draw do
  get 'parks/index'

  get 'parks/new'

  get 'parks/edit'

  get 'parks/show'

  root 'main#index'

  get 'about' => 'main#about'

  resources :parks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
