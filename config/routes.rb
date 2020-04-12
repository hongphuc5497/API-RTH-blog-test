Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  post 'users/sign_in' => 'user_token#create'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :blogs do
        resources :comments do
        end
      end
    end
  end
end
