Rails.application.routes.draw do
  post 'auth/:provider/callback', to: 'api/v1/users#create'
  namespace :api do
    namespace :v1 do
      resources :training_days do
        resources :training_menus do
          resources :sets
        end
      end
      delete '/users/:uid', to: 'users#destroy'
    end
  end
end
