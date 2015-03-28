Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'registrations' }

  # You can have the root of your site routed with "root"
  root 'home#index'

  resources :terms, only: [:index]
  resources :privacy, only: [:index]
  resources :about, only: [:index]

  resources :players, except: [:edit]

  namespace :admin do
    root :to => "players#index"
    resources :players
    resources :users
  end

  resources :faq, only: [:index]

end
