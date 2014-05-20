MyGist::Application.routes.draw do
  root to: "gists#index"
  resources :gists
  match 'gists-search', to: "gists#search", as: 'searchgist', via: [:get,:post]
  resources :groups, only: [:new, :create, :edit, :update, :destroy]

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end
