class AddHealthToDays < ActiveRecord::Migration[7.0]
  def change
    add_column :days, :health, :integer
  end
end
