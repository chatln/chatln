Rails.application.routes.draw do

  #root controller: :courses, action: :index
  root to:'home#index'
  get 'home/inscrire'# prof sign up page
  resources :levels
  devise_for :users

  resources :matieres

  resources :courses do
    resources :comments
  end

  resources :room_messages
  resources :rooms
  get 'manager/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


