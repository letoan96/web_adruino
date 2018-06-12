Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'rooms/show'

  get 'password_resets/new'

  get 'password_resets/edit'
  root 'rooms#show'
  get  '/signup',  to: 'users#new'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact' ,to: 'static_pages#contact'
  get '/login' ,to: 'sessions#new'
  post '/login' ,to: 'sessions#create'
  delete '/logout' ,to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]

  root "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
