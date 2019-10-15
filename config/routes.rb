Rails.application.routes.draw do
  get 'complaints/create'
  devise_for :users
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "companies#index"
end
