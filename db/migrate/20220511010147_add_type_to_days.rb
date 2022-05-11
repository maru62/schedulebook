class AddTypeToDays < ActiveRecord::Migration[7.0]
  def change
    add_column :days, :type, :string
  end
end
