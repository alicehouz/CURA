class CreateOrdersPrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_prescriptions do |t|
      t.references :order, foreign_key: true
      t.references :prescription, foreign_key: true

      t.timestamps
    end
  end
end
