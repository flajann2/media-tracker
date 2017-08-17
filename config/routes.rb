require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :auth do
      mount_devise_token_auth_for 'User', at: 'user'
      mount_devise_token_auth_for 'Admin', at: 'admin'
      as :admin do
        # Define routes for Admin within this block.
      end
    end

    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :media_management
      resources :user_management
      resources :admin_management
    end
  end
  #devise_for :users
  root to: "home#index"
end
