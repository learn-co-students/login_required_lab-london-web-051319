Rails.application.routes.draw do

   get '/', to: 'application#home', as: :home

   get 'sessions/new'

   get 'sessions/create'

   get 'sessions/destroy'

   get 'secrets/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
