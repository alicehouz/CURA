class AddElementsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street_name, :string
    add_column :users, :zip_code, :string
    add_column :users, :city, :string
    add_column :users, :phone_number, :string
    add_column :users, :social_security, :string
    add_column :users, :id_card, :string
  end
end
