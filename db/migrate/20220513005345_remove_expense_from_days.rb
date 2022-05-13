class RemoveExpenseFromDays < ActiveRecord::Migration[7.0]
  def change
    remove_column :days, :expense, :integer
  end
end
