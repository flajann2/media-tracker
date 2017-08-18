FactoryGirl.define do
  factory :admin do
    name "clark"
    sequence(:email) { |n| "clark#{n}@sample.com" }
    password "password"
    password_confirmation "password"
  end
end
