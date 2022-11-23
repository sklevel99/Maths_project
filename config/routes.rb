Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "topics", to: "topics#index"
  # get "topics/new", to: "topics#new"
  # post "topics", to: "topics#create"
  # get "topics/:id", to: "topics#show", as: :topic
  # get "topics/:id/edit", to: "topics#edit"
  # patch "topics/:id", to: "topics#update"
  # delete "topics/:id", to: "topics#destroy"

  # get "topics/:id/questions/", to: "questions#show"
  resources :topics do
    resources :questions, except: [:index, :show] do
    end
  end
end
