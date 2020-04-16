Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pizzas do
    resources :orders, only: [:create, :new, :index, :show, :destroy]
    # resources :toppings, only: [:create, :new, :index, :show, :destroy]
  end
  resources :orders

  root to: 'pages#home'

end
