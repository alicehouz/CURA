class Prescription < ApplicationRecord
  belongs_to :user
  has_many :orders, through: :orders_prescription
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :prescription_name, presence: true
  validates :prescription_start_date, presence: true
  validates :prescription_expiry_date, presence: true
  validates :delivery_date, presence: true
end
