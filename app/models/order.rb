class Order < ApplicationRecord
  belongs_to :user
  has_many :orders_prescriptions, dependent: :destroy
  has_many :prescriptions, through: :orders_prescriptions

  # belongs_to :pharmacy
end
