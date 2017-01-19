Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'

  devise_for :users
  root to: 'pages#home'

  get 'order_research', to: 'pages#order_research'
  get 'get_in_touch', to: 'pages#get_in_touch'
  get 'how_it_works', to: 'pages#how_it_works'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
