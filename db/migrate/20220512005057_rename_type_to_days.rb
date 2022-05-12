class RenameTypeToDays < ActiveRecord::Migration[7.0]
  def change
    rename_column :days, :type, :daytype
  end
end
