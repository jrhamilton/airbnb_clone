# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    user_id 1
    room_id 1
    check_in "2014-04-17"
    check_out "2014-04-17"
  end
end
