module Api
  module V1
    class ApplicationController < ActionController::API
      include DeviseTokenAuth::Concerns::SetUserByToken
      protect_from_forgery with: :exception
    end
  end
end
