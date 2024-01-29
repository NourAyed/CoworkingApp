Rails.application.routes.draw do

  get "about-us", to: "about#index", as: :about

  get "coworks", to: "coworks#new"
  post "coworks", to: "coworks#create"
  delete "coworks", to: "coworks#destroy"
  #resources :coworks

  get "inscription", to: "inscription#new"
  post "inscription", to: "inscription#create"
  delete "inscription", to: "inscription#destroy"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"

end
