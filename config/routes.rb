Rails.application.routes.draw do

  namespace :admin do
      resources :users
      resources :comments
      resources :courses
      resources :levels
      resources :matieres
      resources :rooms
      resources :room_messages

      root to: "home#index"
    end
  #root controller: :courses, action: :index
  root to:'home#index'
  get 'home/inscrire'# prof sign up page
  resources :levels

  devise_for :users, :controllers => {:registrations => "registrations"}


  resources :matieres

  resources :courses do
    resources :comments
  end

  resources :room_messages
  resources :rooms
  get 'manager/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


