class Api::BaseController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  respond_to :json

  before_action :authenticate_api_auth_user!
end
