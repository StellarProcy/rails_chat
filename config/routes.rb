Rails.application.routes.draw do
  scope module: :web do
    resources :users, only: %i[index new create]
    resources :rooms, only: %i[index new create edit update]

    namespace :admin do
      root to: 'admins#index'

      resources :admins, only: %i[index new create]
    end
  end
end
