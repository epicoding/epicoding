# Read about factories at https://github.com/thoughtbot/factory_girl

###### This factoryGirl is not working! Email needs authentication. Check in rails c test.

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password 'password'
    password_confirmation { |u| u.password }
  end
end
