Rails.application.routes.draw do
  root to: 'pages#home'
  resources :prescriptions, only: [:index, :new, :create, :show, :destroy] do

    get 'show_before_order', to: 'prescriptions#show_before_order'
    resources :orders, only: [:index, :new, :create, :destroy]

  end
  resources :orders, only: [:show, :destroy]

  get 'welcome', to: "pages#welcome"
  get 'order_placement', to: "pages#order_placement"
  get 'order_placement_2', to: "pages#order_placement_2"
  get 'order_placement_3', to: "pages#order_placement_3"

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
