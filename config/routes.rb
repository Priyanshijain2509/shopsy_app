Rails.application.routes.draw do
  devise_for :users 
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  get '/items', to: 'items#index'

  resources :users do
    resources :items
  end

  root 'static_pages#index'
end
