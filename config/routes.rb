Rails.application.routes.draw do

  get "about-us", to: "about#index", as: :about

  #get "cowork", to: "cowork#new", as:cowork
  resources :coworks

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"

end
