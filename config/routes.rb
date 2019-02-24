Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [:index, :show] do
    resources :species, only: [:index, :show] do
      resources :plants, only: [:index, :show]
    end
  end

  resources :garden_plants

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
