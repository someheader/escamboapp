Rails.application.routes.draw do
  get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :site do
    get 'home', to:'home/index'
  end
  namespace :backoffice do
    get 'dashboard', to: 'dashboard#index'
  end
  devise_for :admins
  devise_for :members
  get 'home/index'
  root 'site/home#index'
end
