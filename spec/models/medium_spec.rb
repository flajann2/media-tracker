require 'rails_helper'

RSpec.describe Medium, type: :model do
  before(:each) do
    @medium =Medium.new(title: "Hello Kitty",
                        description: "short and terse",
                        uri: "file:/something",
                        media_type: "film",
                        consumable: User.new)
  end

  it "is valid with all the required fields and a user" do
    expect(@medium).to be_valid
  end

  it "is valid with all the required fields and an Admin" do
    expect(Medium.new(title: "Hello Kitty",
                      description: "short and terse",
                      uri: "file:/something",
                      media_type: "book",
                      consumable: Admin.new)).to be_valid
  end

  it "is not valid without a title" do
    @medium.title = nil
    expect(@medium).to_not be_valid
  end

  it "is not valid without a description" do
    @medium.description = nil
    expect(@medium).to_not be_valid
  end

  it "is not valid without a uri"  do
    @medium.uri = nil
    expect(@medium).to_not be_valid
  end

  it "is not valid without a media type" do
    @medium.media_type = nil
    expect(@medium).to_not be_valid
  end
end
