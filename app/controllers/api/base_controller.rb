class Api::BaseController < ApplicationController
  respond_to :json

  skip_before_action :verify_authenticity_token
  before_action :ensure_authentication
end
