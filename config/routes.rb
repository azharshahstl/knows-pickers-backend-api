Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :addresses
      resources :items
      resources :users
      post '/login', to: 'auth#create'
      get '/', to: 'addresses#index'
    end 
  end
end
