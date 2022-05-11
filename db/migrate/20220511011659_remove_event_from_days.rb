class RemoveEventFromDays < ActiveRecord::Migration[7.0]
  def change
    remove_column :days, :event, :string
  end
end
