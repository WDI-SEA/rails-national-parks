Rails.application.routes.draw do

	root 'parks#index'

	get 'parks' => 'parks#index'

  get 'parks/index'

  get 'parks/new'

  get 'parks/edit'

  get 'parks/show'

	resources :parks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
