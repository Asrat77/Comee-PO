require 'rails_helper'

RSpec.describe SalesOrder, type: :model do
  attribs = [
    {
      sales_order_number: [:presence, :uniqueness],
      sales_order_date: :presence,
      delivery_date: :presence,
      status: [:presence, inclusion: [[:in_array, SalesOrder::STATUSES]]]},
      client: :presence
  ]

  include_examples("model_shared_spec", :sales_order, attribs)

end
