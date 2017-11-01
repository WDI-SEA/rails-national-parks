Rails.application.routes.draw do
    root 'parks#index'

    get 'parks' => 'parks#index'

    resources :parks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
