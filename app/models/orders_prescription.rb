class OrdersPrescription < ApplicationRecord
  belongs_to :order
  belongs_to :prescription
end
