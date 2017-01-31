Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'contacts/new'

  get 'contacts/create'

  get 'messages/new'
  get 'messages/create'

  devise_for :users
  root to: 'pages#home'

  get "/:page" => "pages#show"

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  match '/messages',     to: 'messages#new',             via: 'get'
  resources "messages", only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
