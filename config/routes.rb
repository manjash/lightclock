Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'

  devise_for :users
  root to: 'pages#home'

  get 'team', to: 'pages#team'
  get 'how_it_works', to: 'pages#how_it_works'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
