class Order < ApplicationRecord
  belongs_to :user
  has_many :prescriptions, through: :orders_prescription
  # belongs_to :pharmacy
  # validates :order_number, presence: true
  validates :order_date,
  validates
  validates
  validates
  validates
  validates
  validates
  validates
  validates
end
