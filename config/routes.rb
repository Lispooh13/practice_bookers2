Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home/about' => 'homes#about'
  resources :books,except: [:new]
  resources :users,only: [:show, :index, :edit, :update]




end
