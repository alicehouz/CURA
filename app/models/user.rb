class User < ApplicationRecord
  has_many :prescriptions
  has_many :orders
  mount_uploader :avatar, ImageUploader
  mount_uploader :id_card, ImageUploader
  mount_uploader :social_security, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
