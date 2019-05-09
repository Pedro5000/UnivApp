Rails.application.routes.draw do

  resources :courses
  resources :students, except: [:destroy]

  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  get 'help', to: 'pages#help'
  get 'contact', to: 'pages#contact'
  get 'admin', to: 'admin#index'
  get 'admin/students', to: 'admin#students'
  get 'admin/courses', to: 'admin#courses'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
