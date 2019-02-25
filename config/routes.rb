Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [:index, :show] do
    resources :species, only: [:index, :show] do
      resources :plants, only: [:index, :show]
    end
  end

  get :search,  to: "plants#search"
  get :autocomplete, to: 'plants#autocomplete'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :garden_plants, only: [:index, :show, :destroy]
  resources :plants, only: [] do
    resources :garden_plants, only: [:new, :create]
  end
  # get '/dashboard', to: 'users#dashboard'

end
