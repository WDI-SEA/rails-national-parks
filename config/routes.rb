Rails.application.routes.draw do

  root 'home#index'

  get 'api/parks' => 'parks#all_parks'

  post 'api/parks' => 'parks#new_park'

  get 'api/parks/:id' => 'parks#get_park'

  put 'api/parks/:id' => 'parks#update_park'

  delete 'api/parks/:id' => 'parks#destroy_park'

end
