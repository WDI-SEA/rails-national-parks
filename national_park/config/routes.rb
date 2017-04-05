Rails.application.routes.draw do
# get 'park/index'

  # get 'park/edit'

  # get 'park/new'

  # get 'park/show'

  # get 'park/create'

root 'park#index'


resources :park

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
