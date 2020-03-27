Rails.application.routes.draw do
  resources :art_piece_collections
  resources :art_pieces
  resources :collections
  resources :users
  post "/sign-in", to: "users#sign_in"
  get "/validate", to: "users#validate"
  get "/validate", to: "users#validate"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
