class AddUPrescriptionsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :prescriptions, :users
  end
end
