Rails.application.routes.draw do
  namespace :api do
    namespace :auth do
      mount_devise_token_auth_for 'User', at: 'user'
      mount_devise_token_auth_for 'Admin', at: 'admin'
      as :admin do
        # Define routes for Admin within this block.
      end
    end
  end
  #devise_for :users
  root to: "home#index"
end
