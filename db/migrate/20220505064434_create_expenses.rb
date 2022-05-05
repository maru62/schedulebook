class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.date :date
      t.integer :expense
      t.integer :purchase

      t.timestamps
    end
  end
end
