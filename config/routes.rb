Rails.application.routes.draw do
    root "rooms#home"
    get "new", to:"rooms#new"
    post "rooms", to: "rooms#create"
end
