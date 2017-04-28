class AddLatitudeAndLongituteToManufacturers < ActiveRecord::Migration[5.0]
  def change
    add_column :manufacturers, :latitude, :float
    add_column :manufacturers, :longitude, :float
  end
end
