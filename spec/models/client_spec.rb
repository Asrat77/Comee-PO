require 'rails_helper'

RSpec.describe Client, type: :model do
    attribs = [
      {name: :presence}
    ]

    include_examples("model_shared_spec", :client, attribs)
end
