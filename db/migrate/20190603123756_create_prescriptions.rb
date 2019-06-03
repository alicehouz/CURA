class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.date :scan_date
      t.string :image
      t.string :prescription_name
      t.date :prescription_start_date
      t.date :prescription_expiry_date
      t.date :delivery_date
      t.boolean :reccurrency

      t.timestamps
    end
  end
end
