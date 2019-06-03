class Order < ApplicationRecord
  belongs_to :user
  has_many :prescriptions, through: :orders_prescription
  # belongs_to :pharmacy
end
