Rails.application.routes.draw do
  get 'welcome/index'
  get 'inicio', to:'welcome#index'

  devise_for :profiles
  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'welcome#index'
end
