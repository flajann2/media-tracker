FactoryGirl.define do
  factory :medium do
    title "Good ole Movie"
    description "Best movie ever"
    media_type "film"
    metadata {published: 2001}.to_json
    uri "file:/MyString"
  end
end
