Rails.application.routes.draw do
    root "rooms#index"

    # resources :rooms
    # resources :questions

    # post "/questions/new", to: "questions#create"

    resources :rooms do
      resources :questions
    end

    resources :questions, only: [:create]
end
