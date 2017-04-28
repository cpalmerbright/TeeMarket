class AddLatitudeAndLongituteToWholesalers < ActiveRecord::Migration[5.0]
  def change
    add_column :wholesalers, :latitude, :float
    add_column :wholesalers, :longitude, :float
  end
end
