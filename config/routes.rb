Rails.application.routes.draw do
  root "rooms#index"

  get "rooms/new", to: "rooms#new", as: "new_room"
  post "rooms/new", to: "rooms#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
