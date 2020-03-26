Rails.application.routes.draw do
  resources :projectfrees, except: :show
  resources :subscriptions
  

  resources :videofrees
  resources :videos
  devise_for :users
  resource :config_nerd, only: [:edit, :update], path: "admin"
  resources :projects, except: :show
  root to: 'welcome#index'
end
