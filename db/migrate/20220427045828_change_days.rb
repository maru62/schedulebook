class ChangeDays < ActiveRecord::Migration[7.0]
  change_table :days do |table|
    table.index :date
  end
end
