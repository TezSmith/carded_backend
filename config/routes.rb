Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
       post '/login', to: 'users#login'
       post '/signup', to: 'users#create'
        resources :collections
        resources :bizcards
    end #ends :v1
  end #ends :api

end #ends Rails.application
