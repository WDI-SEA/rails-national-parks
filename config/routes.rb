Rails.application.routes.draw do
  get 'nat_park/index'

  get 'nat_park/create'

  get 'nat_park/new'

  get 'nat_park/edit'

  get 'nat_park/show' => 'nat_park#show.html', as: 'nat_park/show/name'

  get 'nat_park/update'

  get 'nat_park/destroy'

  resource :parks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
