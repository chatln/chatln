Rails.application.routes.draw do



  resources :books
  #root controller: :courses, action: :index
  root to:'home#index'
  get 'home/inscrire'# prof sign up page
  get 'manager/index'

  devise_for :users, :controllers => {:registrations => "registrations"}



  #COURSE
  resources :courses do
    resources :comments
  end

  #RECRUTEMENTS
  resources :recrutements do
  resources :job_posts

  end

  #GROUPE D'ETUDE
  resources :room_messages
  resources :rooms


  resources :matieres
  resources :levels

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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


