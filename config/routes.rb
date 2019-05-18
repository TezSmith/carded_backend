Rails.application.routes.draw do

  post '/login', to: 'authentication#create'
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
        post '/signup', to: 'users#create'
        resources :collections
        resources :bizcards
    end #ends :v1
  end #ends :api

end #ends Rails.application
