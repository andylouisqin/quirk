Rails.application.routes.draw do
    root "rooms#home"
    get "new", to:"rooms#new"
    get "rooms/:id", to: "rooms#show"
    post "rooms", to: "rooms#create"
end
