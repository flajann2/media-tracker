FactoryGirl.define do
  factory :user do
    name "hillbilly"
    sequence(:email) { |n| "hill#{n}@sample.com" }
    password "password"
    password_confirmation "password"
  end
end
