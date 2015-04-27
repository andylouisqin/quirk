Rails.application.routes.draw do
    # root "rooms#home"
    # get "new", to: "rooms#new"
    # get "rooms/:id", to: "rooms#show", as: "room"
    # post "rooms", to: "rooms#create"
    root "rooms#index"

    post "/questions/new", to "questions#new"
    resources :rooms
    resources :questions

    # get "rooms/:id/new", to: "questions#new"
    # post "rooms/:id/new", to: "questions#create"
end
