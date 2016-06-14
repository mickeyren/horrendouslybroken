# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bucket do
    name 'The Bucket'
    description { Faker::Lorem.paragraphs(1).first }
  end
end
