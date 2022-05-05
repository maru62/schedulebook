class CreateHours < ActiveRecord::Migration[7.0]
  def change
    create_table :hours do |t|
      t.date :date
      t.integer :hour
      t.string :action
      t.integer :health
      t.integer :mood

      t.timestamps
    end
  end
end
