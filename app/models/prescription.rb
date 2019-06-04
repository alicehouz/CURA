class Prescription < ApplicationRecord
  belongs_to :user
  has_many :orders, through: :orders_prescription
  mount_uploader :image, PhotoUploader
end
