Rails.application.routes.draw do
    resources :seats
    resources :showtimes
    resources :cinemas
    resources :movies
    resources :classifications
    resources :genres
    devise_for :users

    # httpverb "url", to:"controller#action", as: "prefix"
    delete "/artwork/:id", to: "artwork#destroy", as: "artwork_delete"

    root to: 'movies#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
