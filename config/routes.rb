Rails.application.routes.draw do
  root 'welcome#index'
  scope module: :web do
    get 'sign_up', to: 'registrations#new'
    post 'sign_up', to: 'registrations#create'
    get 'sign_in', to: 'sessions#new'
    post 'sign_in', to: 'sessions#create', as: 'log_in'
    delete 'logout', to: 'sessions#destroy'
    get 'password', to: 'passwords#edit', as: 'edit_password'
    patch 'password', to: 'passwords#update'
    get 'password/reset', to: 'password_resets#new'
    post 'password/reset', to: 'password_resets#create'
    get 'password/reset/edit', to: 'password_resets#edit'
    patch 'password/reset/edit', to: 'password_resets#update'
  end
  #   # root to: 'welcome#index'
  #   resources :users, only: %i[index new create]
  #   resources :rooms, only: %i[index new create edit update]

  # namespace :admin do
  #   root to: 'admins#index'

  #   resources :admins, only: %i[index new create]
  # end
end
