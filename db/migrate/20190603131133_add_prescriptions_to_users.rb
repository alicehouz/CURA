class AddPrescriptionsToUsers < ActiveRecord::Migration[5.2]
  def change

    add_reference :prescriptions, :users, foreign_key: true
  end
end
