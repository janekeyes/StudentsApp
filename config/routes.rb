Rails.application.routes.draw do
  devise_for :users
  resources :students
  root to: 'students#index'
end
