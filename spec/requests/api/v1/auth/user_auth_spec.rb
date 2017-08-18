require 'rails_helper'

RSpec.describe Api::V1::Auth::UserTokenController, type: :request do
  it "logs in and gets a token" do
    post '/api/auth/user_token', params: { auth: { email: "user@example.com", password: "password1" }}

    expect(response.response_code).to eq(201)

    json = JSON.parse(response.body)
    expect(json['jwt']).to_not be_nil
  end
end
