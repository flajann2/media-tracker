require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do

    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      namespace :auth do
        post 'user_token' => 'user_token#create'
        post 'admin_token' => 'admin_token#create'
      end

      resources :media_management
      resources :user_management
      resources :admin_management
    end
  end

  root to: "home#index"
end
