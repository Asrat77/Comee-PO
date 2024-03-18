class SalesOrder < ApplicationRecord
  belongs_to :client

  validates :sales_order_number, :sales_order_date, :status, :client,:delivery_date, presence: true
  validates :sales_order_number, uniqueness: true

  DRAFT = "Draft".freeze
  ACCEPTED = "Accepted".freeze
  CANCLLED = "Canclled".freeze
  SUBMITTED = "Submitted".freeze
  CONFIRMED = "Confirmed".freeze

  STATUSES = [DRAFT, ACCEPTED, CANCLLED, SUBMITTED, CONFIRMED].freeze

  validates :status, inclusion: { in: STATUSES }


end
