class Prescription < ApplicationRecord
  belongs_to :user
  has_many :orders_prescriptions
  has_many :orders, through: :orders_prescriptions

  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :prescription_name, presence: true
  validates :prescription_start_date, presence: true
  validates :prescription_expiry_date, presence: true
end
