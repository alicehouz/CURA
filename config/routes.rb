Rails.application.routes.draw do
  root to: 'pages#home'
  resources :prescriptions, only: [:index, :new, :create, :show, :destroy] do
    resources :orders, only: [:index, :new, :create, :destroy]
  end
  resources :orders, only: [:show, :destroy]

  get 'welcome', to: "pages#welcome"


  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
