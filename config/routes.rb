Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show", as: :show_restaurant
  # get "restaurants/:id/reviews/new", to: "reviews#new", as: :new_review
  # post "restaurants/:id/reviews", to: "reviews#create"

  resources :restaurants do
    resources :reviews, only: [:create]
  end

end
