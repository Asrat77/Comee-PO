require 'rails_helper'

RSpec.describe Product, type: :model do
  attribs = [
    code: [:presence],
    code: [:uniqueness],
    name: [:presence],
  ]

  include_examples("model_shared_spec", :product, attribs)
end
