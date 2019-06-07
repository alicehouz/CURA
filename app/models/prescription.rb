class Prescription < ApplicationRecord
  belongs_to :user
  has_many :orders_prescriptions
  has_many :orders, through: :orders_prescriptions

  mount_uploader :image, ImageUploader
  validates :image, presence: true
end
