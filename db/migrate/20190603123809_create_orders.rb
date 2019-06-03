class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.references :user, foreign_key: true
      t.references :prescription, foreign_key: true
      t.integer :total_price
      t.date :order_date
      t.string :street_name
      t.string :zip_code
      t.string :city
      t.string :order_status
      t.integer :prescription_price
      t.integer :amount_refunded
      t.integer :delivery_price
      t.integer :total_price

      t.timestamps
    end
  end
end
