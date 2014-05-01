# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tool do
    name { Faker::Lorem.word }
    summary { Faker::Lorem.sentence }
    url 'http://www.learnhowtoprogram.com'
    user_id { Faker::Number.number(1) }
  end
end
