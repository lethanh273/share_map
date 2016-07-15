SampleApp::Application.routes.draw do
  resources :users do
    member do
      post :sharing
    end
  end
  root to: 'static_pages#home'
  resources :sessions,      only: [:new, :create, :destroy]
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
