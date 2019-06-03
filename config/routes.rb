Rails.application.routes.draw do
  get 'prescriptions/index'
  get 'prescriptions/create'
  get 'prescriptions/new'
  get 'prescriptions/show'
  get 'prescriptions/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
