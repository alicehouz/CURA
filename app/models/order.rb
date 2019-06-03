class Order < ApplicationRecord
  belongs_to :user
  belongs_to :prescription
  # belongs_to :pharmacy
end
