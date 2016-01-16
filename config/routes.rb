Rails.application.routes.draw do
  
  get 'text_details/new'

  get 'text_details/create'

  get 'text_details/edit'

  get 'text_details/destroy'

  get 'text_details/show'

  get 'text_details/index'

  get 'text_details/post'

  get 'text_details/create'

  resources :deadlines
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :taskmemberships
  resources :projectmemberships
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :friendships
  resources :projects
  resources :tasks
  resources :subtasks
  resources :comments
        
  get 'page/index'
  root 'rails_admin/main#dashboard'


  resources :users do
    resources :friendships
    resources :projects do
      resources :tasks do
        resources :subtasks do
          resources :comments
        end
      end
    end
  end


end
