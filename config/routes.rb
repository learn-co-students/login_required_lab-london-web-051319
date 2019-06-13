Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  post "/logout", to: "sessions#destroy"
  get "secret", to: "secrets#show"
end
