Rails.application.routes.draw do

  resources :collections
  namespace :api do
    namespace :v1 do
      resources :users, shallow: true do
        resources :collections, shallow: true do
          resources :bizcards
        end
      end #ends users
    end #ends :v1
  end #ends :api

end #ends Rails.application
