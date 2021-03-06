Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  ActiveAdmin.routes(self)

  devise_for :users
  root to: 'pages#home'

  get "/:page" => "pages#show"

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  match '/messages',     to: 'messages#new',             via: 'get'
  resources "messages", only: [:new, :create]

  match '/thinkerapps',  to: 'thinkerapps#new',          via: 'get'
  resources "thinkerapps", only: [:new, :create]

  match '/researchorders',  to: 'researchorders#new',     via: 'get'
  resources "researchorders", only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
