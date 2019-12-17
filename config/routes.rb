Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get  '/signup',  to: 'users#new'
  resources :users
end
