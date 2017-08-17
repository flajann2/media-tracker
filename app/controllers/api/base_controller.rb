class Api::BaseController < ApplicationController
  include Knock::Authenticable

  respond_to :json

  before_action :authenticate_user
end
