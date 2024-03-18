FactoryBot.define do
  factory :sales_order do
    sales_order_number { Faker::Alphanumeric.alpha(number: 10) }
    sales_order_date { Date.today }
    status { "Draft" }
    delivery_date { Date.today.advance(days: 7) }
    client
  end
end
