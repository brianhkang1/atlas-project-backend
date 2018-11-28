Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update]
      resources :trips, only: [:index, :show, :create, :update, :destroy]
      resources :trip_likes, only: [:index, :show, :create]
      resources :photos, only: [:create]
      resources :itinerary_days, only: [:create]

      post '/login', to: 'auth#create'
      get '/profile', to: "users#profile"
    end
  end
end
