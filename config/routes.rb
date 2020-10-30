Rails.application.routes.draw do
  get 'tags/:tag', to: 'accounts#index', as: :tag
  resources :mytags
  resources :accounts do
    resources :comments
  end

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "accounts#index"
end
