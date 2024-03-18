FactoryBot.define do
  factory :product do
    code { Faker::Alphanumeric.alpha(number: 10) }
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
  end
end
