Rails.application.routes.draw do

  devise_for :users
  root to: 'categories#index'

  resources :categories, only: [:index, :show] do
    resources :species, only: [:show] do
      resources :plants, only: [:index, :show]
    end
  end

  get :autocomplete, to: 'plants#autocomplete'


  resources :garden_plants, only: [:index, :show, :destroy]
  resources :plants, only: [:index] do
    resources :garden_plants, only: [:new, :create]
  end
  # get '/dashboard', to: 'users#dashboard'

  scope "my-garden" do
    post "plants/:id/water", to: 'garden_plants#water', as: :water_plant
    get :water, to: 'garden_plants#watering', as: :plant_watering
  end

end
