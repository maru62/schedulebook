class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.date :date
      t.integer :purchase
      t.string :shop
      t.string :location
      t.string :goods
      t.integer :price

      t.timestamps
    end
  end
end
