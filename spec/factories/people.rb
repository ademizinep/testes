FactoryBot.define do
  factory :person do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.phone_number }
    address { Faker::Address.full_address }
    picture_url { Faker::Avatar.image }
    date_of_birth { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
