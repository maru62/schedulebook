class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.date :date
      t.string :event
      t.integer :expense
      t.string :memo

      t.timestamps
    end
  end
end
