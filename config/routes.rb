Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [:index, :show] do
    resources :species, only: [:index, :show] do
      resources :plants, only: [:index, :show]
    end
  end

  resources :garden_plants
  # get '/dashboard', to: 'users#dashboard'
end
