Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'registrations' }

  # You can have the root of your site routed with "root"
  root 'home#index'

  resources :terms, only: [:index]
  resources :privacy, only: [:index]
  resources :about, only: [:index]

  resources :players, except: [:edit]
end
