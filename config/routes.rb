Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end

  namespace :profiles_backoffice do
    get 'welcome/index'
  end

  namespace :admins_backoffice do
    get 'welcome/index'
  end

  get 'inicio', to:'site/welcome#index'

  devise_for :profiles
  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'site/welcome#index'
end
