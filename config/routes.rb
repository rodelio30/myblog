Rails.application.routes.draw do

  resources :mytags
  resources :accounts do
    resources :comments
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "accounts#index"
end
