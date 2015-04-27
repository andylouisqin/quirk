Rails.application.routes.draw do
    # root "rooms#home"
    # get "new", to: "rooms#new"
    # get "rooms/:id", to: "rooms#show", as: "room"
    # post "rooms", to: "rooms#create"
    root "rooms#index"

    resources :rooms
    resources :questions

    # post "/questions/new", to: "questions#create"
end
