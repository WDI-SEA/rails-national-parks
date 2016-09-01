Rails.application.routes.draw do


  # get 'parks/index'  

  # get 'parks/new'

  # get 'parks/create'

  # get 'parks/show'

  # get 'parks/edit'

  # get 'parks/update'

  # get 'parks/delete'

  root 'main#index'

  get 'about' => 'main#about'

  get 'parks/:id' => 'parks#show'

  resources :parks   #this handles all the commented out routes above

  post '/parks/:id' => 'parks#update'


end