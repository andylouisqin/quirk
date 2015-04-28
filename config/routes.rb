Rails.application.routes.draw do
    root "rooms#index"

    # resources :rooms
    # resources :questions

    # post "/questions/new", to: "questions#create"

    resources :rooms do
      resources :questions
    end

    resources :questions, only: [:create]

    resources :questions do
      member do
        post 'upvote'
        put :upvote
      end
    end

    get "questions/:id/upvote", to: "questions#upvote"
end
