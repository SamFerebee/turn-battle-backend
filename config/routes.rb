Rails.application.routes.draw do

  resources :playergears
  resources :gears
  resources :users
  get "/test", to: "specialties#test"
  get "/battle", to: "players#test_battle"
  

  post "/create_player", to: "players#create"
  get "/specialties", to: "specialties#index"

  post "/create_account", to:"users#create"
  post "/login", to:"users#login"
  patch "/me", to:"users#me"
  get "/autolog", to:"users#autolog"

  patch "/change_char_stats", to:"players#change_stats"

  get "/gear_store", to:"gears#gear_store"
  patch "/swap_gear", to:"gears#swap_gear"

  patch "/buy_gear", to: "gears#buy_gear"


end
