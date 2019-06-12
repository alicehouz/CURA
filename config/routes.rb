Rails.application.routes.draw do
  get 'pharmacies/index'
  get 'pharmacies/show'
  root to: 'pages#home'
  resources :prescriptions, only: [:index, :new, :create, :show, :destroy] do

    get 'show_before_order', to: 'prescriptions#show_before_order'

    get 'show_after_order', to: 'prescriptions#show_after_order'

    resources :orders, only: [:index, :new, :create, :destroy, :show]

  end

  resources :orders, only: [:index, :show]


  get 'welcome', to: "pages#welcome"
  get 'delivery', to: "pages#delivery"

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
