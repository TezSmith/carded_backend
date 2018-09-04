Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :users
        resources :collections
        resources :bizcards

    end #ends :v1
  end #ends :api

end #ends Rails.application
