Rails.application.routes.draw do
  scope module: :web do

    namespace :admin do
      root to: 'admins#index'

      resources :admins, only: %i[index new create]
    end
  end
end
