Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'custom_registrations' }
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'


  root 'static_pages#index'
end
