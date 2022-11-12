Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "topics", to: "topics#index"
  get "topics/new", to: "topics#new"
  post "topics", to: "topics#create"
  get "topics/:id", to: "topics#show"
end
