require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(email: "test@test.com",
                     password: "password")
  end

  it "should be valid with normal fields present" do
    expect(@user).to be_valid
  end
end
