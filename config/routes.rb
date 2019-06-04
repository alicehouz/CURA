Rails.application.routes.draw do
  root to: 'pages#home'

  resources :prescriptions, only: [:index, :new, :create]

  get 'welcome', to: "pages#welcome"
  resources :orders do
    resources :prescriptions
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
