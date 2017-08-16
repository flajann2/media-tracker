require 'rails_helper'

RSpec.describe Admin, type: :model do
  before(:each) do
    @admin = Admin.new(email: "test@test.com",
                       password: "password")
  end

  it "should be valid with normal fields present" do
    expect(@admin).to be_valid
  end
end
