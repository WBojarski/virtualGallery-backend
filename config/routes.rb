Rails.application.routes.draw do
  resources :art_piece_collections
  resources :art_pieces
  resources :collections
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
