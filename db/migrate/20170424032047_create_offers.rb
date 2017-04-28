class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.references :batch, foreign_key: true
      t.references :wholesaler, foreign_key: true
      t.integer :amount, default: 0
      t.boolean :accepted
      t.boolean :ignored

      t.timestamps
    end
  end
end
