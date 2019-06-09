class AddCoordinatesToPharmacies < ActiveRecord::Migration[5.2]
  def change
    add_column :pharmacies, :latitude, :float
    add_column :pharmacies, :longitude, :float
  end
end
