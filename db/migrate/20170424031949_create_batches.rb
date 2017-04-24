class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.references :manufacturer, foreign_key: true
      t.integer :quantity
      t.string :fabric
      t.string :color

      t.timestamps
    end
  end
end
