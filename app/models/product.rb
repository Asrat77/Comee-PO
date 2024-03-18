class Product < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
end
