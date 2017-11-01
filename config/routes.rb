Rails.application.routes.draw do

  get 'trails/index'

  get 'trails/new'

  get 'trails/edit'

  get 'trails/show'

  root 'main#index'

  get 'about' => 'main#about'

  resources :trails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

