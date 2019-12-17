Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get  '/signup',  to: 'users#new'
  resources :users
end
