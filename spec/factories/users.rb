# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :username do |n|
    @username = Faker::Internet.user_name
  end

  sequence :email do |n|
    Faker::Internet.email(@username)
  end

  factory :user do
    username
    email
    password '12345678'
    password_confirmation '12345678'
  end
end
