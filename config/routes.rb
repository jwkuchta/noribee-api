Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: [:show]
  get "/api/external", to: "api/external#token"
  get "api/private", to: "api/private#private"
  get "api/public", to: "api/public#public"

  # MIGHT HAVE TO ADD MORE CUSTOM ROUTES LATER WHEN USER HAS MORE IN PROFILE
  get "/users/:user_id", to: "users#show"

end
