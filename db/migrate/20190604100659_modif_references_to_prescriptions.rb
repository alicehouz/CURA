class ModifReferencesToPrescriptions < ActiveRecord::Migration[5.2]
  def change
  remove_reference :prescriptions, :users, index: true
  add_reference :prescriptions, :user, index: true
  end
end
