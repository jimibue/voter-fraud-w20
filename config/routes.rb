Rails.application.routes.draw do
  get "things/index"
  root "rooms#index"

  get "rooms/new", to: "rooms#new", as: "new_room"
  post "rooms/new", to: "rooms#create"

  get "rooms/things", to: "rooms#room_things", as: "room_things"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
