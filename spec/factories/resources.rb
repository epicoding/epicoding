# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :resource do
    name { Faker::Lorem.word }
    summary { Faker::Lorem.sentences.join(" ") }
    url 'http://www.epicodus.com'
    user_id { Faker::Number.number(1) }
    tool_id 13
  end
end
