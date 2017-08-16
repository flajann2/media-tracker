require 'rails_helper'

RSpec.describe Medium, type: :model do
  it "is not valid without a title"
  it "is not valid without a description"
  it "is not valid without a uri"
  it "is not valid without a media type"
end
