Rails.application.routes.draw do
  # get 'users/create'

  resources :trips
  get 'users/:user_id/trips', to: 'trips#get_user_trips'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'authenticate', to: 'authentication#authenticate'
  post 'users/create', to: 'users#create'
  post 'users/show', to: 'users#show'

# instagram related routes
  get 'get_user_instagram_media', to: 'instagram#get_user_instagram_media'
  post 'exchange_code_with_token', to: 'instagram#exchange_code_with_token'

end